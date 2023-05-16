// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.AppStoreVersions.WithID.Relationships {
    public var appStoreReviewDetail: AppStoreReviewDetail {
        AppStoreReviewDetail(path: path + "/appStoreReviewDetail")
    }

    public struct AppStoreReviewDetail {
        /// Path: `/v1/appStoreVersions/{id}/relationships/appStoreReviewDetail`
        public let path: String
    }
}
