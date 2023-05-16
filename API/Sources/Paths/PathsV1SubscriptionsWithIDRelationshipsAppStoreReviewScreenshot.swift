// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.Subscriptions.WithID.Relationships {
    public var appStoreReviewScreenshot: AppStoreReviewScreenshot {
        AppStoreReviewScreenshot(path: path + "/appStoreReviewScreenshot")
    }

    public struct AppStoreReviewScreenshot {
        /// Path: `/v1/subscriptions/{id}/relationships/appStoreReviewScreenshot`
        public let path: String
    }
}
