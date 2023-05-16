// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.ScmProviders {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/scmProviders/{id}`
        public let path: String

        public func get(fieldsScmProviders: [FieldsScmProviders]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil) -> Request<API.ScmProviderResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsScmProviders, fieldsScmRepositories), id: "scmProviders-get_instance")
        }

        private func makeGetQuery(_ fieldsScmProviders: [FieldsScmProviders]?, _ fieldsScmRepositories: [FieldsScmRepositories]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsScmProviders, forKey: "fields[scmProviders]")
            encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
            return encoder.items
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
    }
}
