// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.CiWorkflows.WithID {
    public var repository: Repository {
        Repository(path: path + "/repository")
    }

    public struct Repository {
        /// Path: `/v1/ciWorkflows/{id}/repository`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.ScmRepositoryResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciWorkflows-repository-get_to_one_related")
        }

        public struct GetParameters {
            public var fieldsScmGitReferences: [FieldsScmGitReferences]?
            public var fieldsScmProviders: [FieldsScmProviders]?
            public var fieldsScmRepositories: [FieldsScmRepositories]?
            public var include: [Include]?

            public enum FieldsScmGitReferences: String, Codable, CaseIterable {
                case canonicalName
                case isDeleted
                case kind
                case name
                case repository
            }

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

            public enum Include: String, Codable, CaseIterable {
                case defaultBranch
                case scmProvider
            }

            public init(fieldsScmGitReferences: [FieldsScmGitReferences]? = nil, fieldsScmProviders: [FieldsScmProviders]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, include: [Include]? = nil) {
                self.fieldsScmGitReferences = fieldsScmGitReferences
                self.fieldsScmProviders = fieldsScmProviders
                self.fieldsScmRepositories = fieldsScmRepositories
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsScmGitReferences, forKey: "fields[scmGitReferences]")
                encoder.encode(fieldsScmProviders, forKey: "fields[scmProviders]")
                encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
