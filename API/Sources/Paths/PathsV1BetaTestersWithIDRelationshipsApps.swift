// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.BetaTesters.WithID.Relationships {
    public var apps: Apps {
        Apps(path: path + "/apps")
    }

    public struct Apps {
        /// Path: `/v1/betaTesters/{id}/relationships/apps`
        public let path: String

        public func get(limit: Int? = nil) -> Request<API.BetaTesterAppsLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "betaTesters-apps-get_to_many_relationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public func delete(_ body: API.BetaTesterAppsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "DELETE", body: body, id: "betaTesters-apps-delete_to_many_relationship")
        }
    }
}
