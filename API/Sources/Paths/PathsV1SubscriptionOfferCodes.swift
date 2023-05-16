// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var subscriptionOfferCodes: SubscriptionOfferCodes {
        SubscriptionOfferCodes(path: path + "/subscriptionOfferCodes")
    }

    public struct SubscriptionOfferCodes {
        /// Path: `/v1/subscriptionOfferCodes`
        public let path: String

        public func post(_ body: API.SubscriptionOfferCodeCreateRequest) -> Request<API.SubscriptionOfferCodeResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionOfferCodes-create_instance")
        }
    }
}