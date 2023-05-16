// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.Subscriptions.WithID.Relationships {
    public var subscriptionLocalizations: SubscriptionLocalizations {
        SubscriptionLocalizations(path: path + "/subscriptionLocalizations")
    }

    public struct SubscriptionLocalizations {
        /// Path: `/v1/subscriptions/{id}/relationships/subscriptionLocalizations`
        public let path: String
    }
}
