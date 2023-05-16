// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.SubscriptionIntroductoryOffers {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionIntroductoryOffers/{id}`
        public let path: String

        public func patch(_ body: API.SubscriptionIntroductoryOfferUpdateRequest) -> Request<API.SubscriptionIntroductoryOfferResponse> {
            Request(path: path, method: "PATCH", body: body, id: "subscriptionIntroductoryOffers-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "subscriptionIntroductoryOffers-delete_instance")
        }
    }
}
