// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.SubscriptionAvailabilities.WithID {
    public var relationships: Relationships {
        Relationships(path: path + "/relationships")
    }

    public struct Relationships {
        /// Path: `/v1/subscriptionAvailabilities/{id}/relationships`
        public let path: String
    }
}
