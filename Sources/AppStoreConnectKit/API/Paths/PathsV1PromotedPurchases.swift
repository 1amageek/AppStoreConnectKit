// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var promotedPurchases: PromotedPurchases {
        PromotedPurchases(path: path + "/promotedPurchases")
    }

    public struct PromotedPurchases {
        /// Path: `/v1/promotedPurchases`
        public let path: String

        public func post(_ body: PromotedPurchaseCreateRequest) -> Request<PromotedPurchaseResponse> {
            Request(path: path, method: "POST", body: body, id: "promotedPurchases-create_instance")
        }
    }
}