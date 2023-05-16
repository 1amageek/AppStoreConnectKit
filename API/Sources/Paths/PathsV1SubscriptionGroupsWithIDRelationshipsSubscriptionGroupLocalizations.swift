// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.SubscriptionGroups.WithID.Relationships {
    public var subscriptionGroupLocalizations: SubscriptionGroupLocalizations {
        SubscriptionGroupLocalizations(path: path + "/subscriptionGroupLocalizations")
    }

    public struct SubscriptionGroupLocalizations {
        /// Path: `/v1/subscriptionGroups/{id}/relationships/subscriptionGroupLocalizations`
        public let path: String
    }
}
