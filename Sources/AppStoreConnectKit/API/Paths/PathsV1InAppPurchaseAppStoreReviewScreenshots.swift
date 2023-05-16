// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var inAppPurchaseAppStoreReviewScreenshots: InAppPurchaseAppStoreReviewScreenshots {
        InAppPurchaseAppStoreReviewScreenshots(path: path + "/inAppPurchaseAppStoreReviewScreenshots")
    }

    public struct InAppPurchaseAppStoreReviewScreenshots {
        /// Path: `/v1/inAppPurchaseAppStoreReviewScreenshots`
        public let path: String

        public func post(_ body: InAppPurchaseAppStoreReviewScreenshotCreateRequest) -> Request<InAppPurchaseAppStoreReviewScreenshotResponse> {
            Request(path: path, method: "POST", body: body, id: "inAppPurchaseAppStoreReviewScreenshots-create_instance")
        }
    }
}
