// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct UploadOperation: Codable {
    public var method: String?
    public var url: String?
    public var length: Int?
    public var offset: Int?
    public var requestHeaders: [HTTPHeader]?

    public init(method: String? = nil, url: String? = nil, length: Int? = nil, offset: Int? = nil, requestHeaders: [HTTPHeader]? = nil) {
        self.method = method
        self.url = url
        self.length = length
        self.offset = offset
        self.requestHeaders = requestHeaders
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.method = try values.decodeIfPresent(String.self, forKey: "method")
        self.url = try values.decodeIfPresent(String.self, forKey: "url")
        self.length = try values.decodeIfPresent(Int.self, forKey: "length")
        self.offset = try values.decodeIfPresent(Int.self, forKey: "offset")
        self.requestHeaders = try values.decodeIfPresent([HTTPHeader].self, forKey: "requestHeaders")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(method, forKey: "method")
        try values.encodeIfPresent(url, forKey: "url")
        try values.encodeIfPresent(length, forKey: "length")
        try values.encodeIfPresent(offset, forKey: "offset")
        try values.encodeIfPresent(requestHeaders, forKey: "requestHeaders")
    }
}
