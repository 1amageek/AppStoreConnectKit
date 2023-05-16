// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.SubscriptionPromotionalOffers.WithID.Relationships {
    public var prices: Prices {
        Prices(path: path + "/prices")
    }

    public struct Prices {
        /// Path: `/v1/subscriptionPromotionalOffers/{id}/relationships/prices`
        public let path: String
    }
}