// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var subscriptions: Subscriptions {
        Subscriptions(path: path + "/subscriptions")
    }

    public struct Subscriptions {
        /// Path: `/v1/subscriptions`
        public let path: String

        public func post(_ body: SubscriptionCreateRequest) -> Request<SubscriptionResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptions-create_instance")
        }
    }
}
