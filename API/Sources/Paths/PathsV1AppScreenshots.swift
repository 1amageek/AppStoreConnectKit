// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appScreenshots: AppScreenshots {
        AppScreenshots(path: path + "/appScreenshots")
    }

    public struct AppScreenshots {
        /// Path: `/v1/appScreenshots`
        public let path: String

        public func post(_ body: API.AppScreenshotCreateRequest) -> Request<API.AppScreenshotResponse> {
            Request(path: path, method: "POST", body: body, id: "appScreenshots-create_instance")
        }
    }
}
