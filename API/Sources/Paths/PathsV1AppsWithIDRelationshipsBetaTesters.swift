// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.Apps.WithID.Relationships {
    public var betaTesters: BetaTesters {
        BetaTesters(path: path + "/betaTesters")
    }

    public struct BetaTesters {
        /// Path: `/v1/apps/{id}/relationships/betaTesters`
        public let path: String

        public func delete(_ body: API.AppBetaTestersLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "DELETE", body: body, id: "apps-betaTesters-delete_to_many_relationship")
        }
    }
}