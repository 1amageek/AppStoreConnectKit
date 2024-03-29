// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.SubscriptionOfferCodes.WithID.Relationships {
    public var oneTimeUseCodes: OneTimeUseCodes {
        OneTimeUseCodes(path: path + "/oneTimeUseCodes")
    }

    public struct OneTimeUseCodes {
        /// Path: `/v1/subscriptionOfferCodes/{id}/relationships/oneTimeUseCodes`
        public let path: String
    }
}
