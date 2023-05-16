//
//  AppStoreConnectClient.swift
//  
//
//  Created by Norikazu Muramoto on 2023/05/16.
//

import Foundation
import AsyncHTTPClient
import NIO
import NIOHTTP1
import JWTKit

public typealias AppStoreConnectAPI = Paths

public class AppStoreConnectClient {

    public struct Configuration {
        public var issuerID: String
        public var privateKeyID: String
        public var privateKey: String
        public var expireDuration: TimeInterval
        public init(issuerID: String, privateKeyID: String, privateKey: String, expireDuration: TimeInterval = 1200) {
            self.issuerID = issuerID
            self.privateKeyID = privateKeyID
            self.privateKey = privateKey
            self.expireDuration = expireDuration
        }
    }

    struct AppStoreConnectPayload: JWTPayload {
        let iss: IssuerClaim
        let exp: ExpirationClaim
        let aud: AudienceClaim
        let iat: IssuedAtClaim

        func verify(using signer: JWTSigner) throws {
            try self.exp.verifyNotExpired()
        }
    }

    let configuration: Configuration

    var tokenCreationDate: Date?

    var currentToken: String?

    public init(configuration: Configuration) {
        self.configuration = configuration
    }

    func getAccessToken(forScope scope: [String] = ["GET /v1/apps?filter[platform]=IOS"]) throws -> String {
        if let tokenCreationDate = tokenCreationDate,
           let currentToken = currentToken,
           Date().timeIntervalSince(tokenCreationDate) < configuration.expireDuration {
            return currentToken
        }

        let signers = JWTSigners()
        let signer = try JWTSigner.es256(key: .private(pem: configuration.privateKey))
        let kid = JWKIdentifier(string: configuration.privateKeyID)
        signers.use(signer, kid: kid)

        let payload = AppStoreConnectPayload(
            iss: IssuerClaim(value: configuration.issuerID),
            exp: ExpirationClaim(value: Date().addingTimeInterval(configuration.expireDuration)),
            aud: AudienceClaim(value: "appstoreconnect-v1"),
            iat: IssuedAtClaim(value: Date())
        )

        let jwt = try signers.sign(payload, kid: kid)
        self.tokenCreationDate = Date()
        self.currentToken = jwt
        return jwt
    }
}

extension AppStoreConnectClient {

    public func request<Response>(_ request: Request<Response>) async throws -> (Response, HTTPClient.Response) where Response: Decodable {
        guard let url = request.url else {
            throw NSError(domain: "Invalid URL", code: -1, userInfo: nil)
        }
        var headers = HTTPHeaders()
        if let requestHeaders = request.headers {
            for (name, value) in requestHeaders {
                headers.add(name: name, value: value)
            }
        }
        let token = try getAccessToken()
        headers.add(name: "Authorization", value: "Bearer \(token)")
        var body: HTTPClient.Body? = nil
        if let requestBody = request.body {
            let encoder = JSONEncoder()
            let data = try encoder.encode(requestBody)
            body = .data(data)
        }
        let httpRequest = try HTTPClient.Request(
            url: url,
            method: .init(rawValue: request.method.rawValue),
            headers: headers,
            body: body
        )

        let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: System.coreCount)
        let client = HTTPClient(eventLoopGroupProvider: .shared(eventLoopGroup))
        let response = try await client.execute(request: httpRequest).get()
        try await client.shutdown()
        try await eventLoopGroup.shutdownGracefully()
        guard response.status == .ok else {
            throw NSError(domain: "HTTP error", code: Int(response.status.code), userInfo: nil)
        }
        guard
            var body = response.body,
            let responseBodyData = body.readData(length: body.readableBytes)
        else {
            throw NSError(domain: "Client", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid response from token endpoint"])
        }
        let decoder = JSONDecoder()
        let decoded = try decoder.decode(Response.self, from: responseBodyData)
        return (decoded, response)
    }
}
