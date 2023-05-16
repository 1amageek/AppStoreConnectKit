// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var subscriptionIntroductoryOffers: SubscriptionIntroductoryOffers {
        SubscriptionIntroductoryOffers(path: path + "/subscriptionIntroductoryOffers")
    }

    public struct SubscriptionIntroductoryOffers {
        /// Path: `/v1/subscriptionIntroductoryOffers`
        public let path: String

        public func post(_ body: SubscriptionIntroductoryOfferCreateRequest) -> Request<SubscriptionIntroductoryOfferResponse> {
            Request(path: path, method: "POST", body: body, id: "subscriptionIntroductoryOffers-create_instance")
        }
    }
}
