// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appEventScreenshots: AppEventScreenshots {
        AppEventScreenshots(path: path + "/appEventScreenshots")
    }

    public struct AppEventScreenshots {
        /// Path: `/v1/appEventScreenshots`
        public let path: String

        public func post(_ body: API.AppEventScreenshotCreateRequest) -> Request<API.AppEventScreenshotResponse> {
            Request(path: path, method: "POST", body: body, id: "appEventScreenshots-create_instance")
        }
    }
}
