// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var scmProviders: ScmProviders {
        ScmProviders(path: path + "/scmProviders")
    }

    public struct ScmProviders {
        /// Path: `/v1/scmProviders`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.ScmProvidersResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "scmProviders-get_collection")
        }

        public struct GetParameters {
            public var fieldsScmProviders: [FieldsScmProviders]?
            public var limit: Int?
            public var fieldsScmRepositories: [FieldsScmRepositories]?

            public enum FieldsScmProviders: String, Codable, CaseIterable {
                case repositories
                case scmProviderType
                case url
            }

            public enum FieldsScmRepositories: String, Codable, CaseIterable {
                case defaultBranch
                case gitReferences
                case httpCloneURL = "httpCloneUrl"
                case lastAccessedDate
                case ownerName
                case pullRequests
                case repositoryName
                case scmProvider
                case sshCloneURL = "sshCloneUrl"
            }

            public init(fieldsScmProviders: [FieldsScmProviders]? = nil, limit: Int? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil) {
                self.fieldsScmProviders = fieldsScmProviders
                self.limit = limit
                self.fieldsScmRepositories = fieldsScmRepositories
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsScmProviders, forKey: "fields[scmProviders]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
                return encoder.items
            }
        }
    }
}
