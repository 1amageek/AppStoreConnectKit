// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appStoreReviewDetails: AppStoreReviewDetails {
        AppStoreReviewDetails(path: path + "/appStoreReviewDetails")
    }

    public struct AppStoreReviewDetails {
        /// Path: `/v1/appStoreReviewDetails`
        public let path: String

        public func post(_ body: API.AppStoreReviewDetailCreateRequest) -> Request<API.AppStoreReviewDetailResponse> {
            Request(path: path, method: "POST", body: body, id: "appStoreReviewDetails-create_instance")
        }
    }
}
