// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var subscriptionLocalizations: SubscriptionLocalizations {
        SubscriptionLocalizations(path: path + "/subscriptionLocalizations")
    }

    public struct SubscriptionLocalizations {
        /// Path: `/v1/subscriptionLocalizations`
        public let path: String

        public func post(_ body: API.SubscriptionLocalizationCreateRequest) -> Request<API.SubscriptionLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionLocalizations-create_instance")
        }
    }
}
