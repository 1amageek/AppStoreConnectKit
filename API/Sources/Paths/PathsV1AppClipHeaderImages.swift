// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appClipHeaderImages: AppClipHeaderImages {
        AppClipHeaderImages(path: path + "/appClipHeaderImages")
    }

    public struct AppClipHeaderImages {
        /// Path: `/v1/appClipHeaderImages`
        public let path: String

        public func post(_ body: API.AppClipHeaderImageCreateRequest) -> Request<API.AppClipHeaderImageResponse> {
            Request(path: path, method: "POST", body: body, id: "appClipHeaderImages-create_instance")
        }
    }
}