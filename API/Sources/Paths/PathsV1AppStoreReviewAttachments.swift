// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appStoreReviewAttachments: AppStoreReviewAttachments {
        AppStoreReviewAttachments(path: path + "/appStoreReviewAttachments")
    }

    public struct AppStoreReviewAttachments {
        /// Path: `/v1/appStoreReviewAttachments`
        public let path: String

        public func post(_ body: API.AppStoreReviewAttachmentCreateRequest) -> Request<API.AppStoreReviewAttachmentResponse> {
            Request(path: path, method: "POST", body: body, id: "appStoreReviewAttachments-create_instance")
        }
    }
}
