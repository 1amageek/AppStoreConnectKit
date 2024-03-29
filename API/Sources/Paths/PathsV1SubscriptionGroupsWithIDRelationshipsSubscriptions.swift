// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.SubscriptionGroups.WithID.Relationships {
    public var subscriptions: Subscriptions {
        Subscriptions(path: path + "/subscriptions")
    }

    public struct Subscriptions {
        /// Path: `/v1/subscriptionGroups/{id}/relationships/subscriptions`
        public let path: String
    }
}
