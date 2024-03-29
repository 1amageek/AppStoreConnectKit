// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.BetaTesters.WithID.Relationships {
    public var builds: Builds {
        Builds(path: path + "/builds")
    }

    public struct Builds {
        /// Path: `/v1/betaTesters/{id}/relationships/builds`
        public let path: String

        public func get(limit: Int? = nil) -> Request<BetaTesterBuildsLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "betaTesters-builds-get_to_many_relationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public func post(_ body: BetaTesterBuildsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "POST", body: body, id: "betaTesters-builds-create_to_many_relationship")
        }

        public func delete(_ body: BetaTesterBuildsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "DELETE", body: body, id: "betaTesters-builds-delete_to_many_relationship")
        }
    }
}
