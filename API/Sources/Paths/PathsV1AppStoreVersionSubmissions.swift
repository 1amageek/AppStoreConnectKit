// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appStoreVersionSubmissions: AppStoreVersionSubmissions {
        AppStoreVersionSubmissions(path: path + "/appStoreVersionSubmissions")
    }

    public struct AppStoreVersionSubmissions {
        /// Path: `/v1/appStoreVersionSubmissions`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func post(_ body: API.AppStoreVersionSubmissionCreateRequest) -> Request<API.AppStoreVersionSubmissionResponse> {
            Request(path: path, method: "POST", body: body, id: "appStoreVersionSubmissions-create_instance")
        }
    }
}
