// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.CiBuildActions.WithID {
    public var artifacts: Artifacts {
        Artifacts(path: path + "/artifacts")
    }

    public struct Artifacts {
        /// Path: `/v1/ciBuildActions/{id}/artifacts`
        public let path: String

        public func get(fieldsCiArtifacts: [FieldsCiArtifacts]? = nil, limit: Int? = nil) -> Request<API.CiArtifactsResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsCiArtifacts, limit), id: "ciBuildActions-artifacts-get_to_many_related")
        }

        private func makeGetQuery(_ fieldsCiArtifacts: [FieldsCiArtifacts]?, _ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsCiArtifacts, forKey: "fields[ciArtifacts]", explode: false)
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public enum FieldsCiArtifacts: String, Codable, CaseIterable {
            case downloadURL = "downloadUrl"
            case fileName
            case fileSize
            case fileType
        }
    }
}
