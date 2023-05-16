// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var subscriptionPrices: SubscriptionPrices {
        SubscriptionPrices(path: path + "/subscriptionPrices")
    }

    public struct SubscriptionPrices {
        /// Path: `/v1/subscriptionPrices`
        public let path: String

        public func post(_ body: API.SubscriptionPriceCreateRequest) -> Request<API.SubscriptionPriceResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionPrices-create_instance")
        }
    }
}
