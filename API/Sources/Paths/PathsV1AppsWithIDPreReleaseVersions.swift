// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.Apps.WithID {
    public var preReleaseVersions: PreReleaseVersions {
        PreReleaseVersions(path: path + "/preReleaseVersions")
    }

    public struct PreReleaseVersions {
        /// Path: `/v1/apps/{id}/preReleaseVersions`
        public let path: String

        public func get(fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, limit: Int? = nil) -> Request<API.PreReleaseVersionsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsPreReleaseVersions, limit), id: "apps-preReleaseVersions-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
            case app
            case builds
            case platform
            case version
        }
    }
}