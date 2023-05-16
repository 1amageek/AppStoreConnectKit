// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.BetaAppClipInvocationLocalizations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaAppClipInvocationLocalizations/{id}`
        public let path: String

        public func patch(_ body: BetaAppClipInvocationLocalizationUpdateRequest) -> Request<BetaAppClipInvocationLocalizationResponse> {
            Request(path: path, method: "PATCH", body: body, id: "betaAppClipInvocationLocalizations-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "betaAppClipInvocationLocalizations-delete_instance")
        }
    }
}
