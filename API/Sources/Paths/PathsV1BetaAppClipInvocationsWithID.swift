// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.BetaAppClipInvocations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaAppClipInvocations/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.BetaAppClipInvocationResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "betaAppClipInvocations-get_instance")
        }

        public struct GetParameters {
            public var fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations]?
            public var include: [Include]?
            public var limitBetaAppClipInvocationLocalizations: Int?

            public enum FieldsBetaAppClipInvocations: String, Codable, CaseIterable {
                case betaAppClipInvocationLocalizations
                case buildBundle
                case url
            }

            public enum Include: String, Codable, CaseIterable {
                case betaAppClipInvocationLocalizations
            }

            public init(fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations]? = nil, include: [Include]? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil) {
                self.fieldsBetaAppClipInvocations = fieldsBetaAppClipInvocations
                self.include = include
                self.limitBetaAppClipInvocationLocalizations = limitBetaAppClipInvocationLocalizations
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsBetaAppClipInvocations, forKey: "fields[betaAppClipInvocations]")
                encoder.encode(include, forKey: "include")
                encoder.encode(limitBetaAppClipInvocationLocalizations, forKey: "limit[betaAppClipInvocationLocalizations]")
                return encoder.items
            }
        }

        public func patch(_ body: API.BetaAppClipInvocationUpdateRequest) -> Request<API.BetaAppClipInvocationResponse> {
            Request(path: path, method: "PATCH", body: body, id: "betaAppClipInvocations-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "betaAppClipInvocations-delete_instance")
        }
    }
}
