// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appClipAdvancedExperienceImages: AppClipAdvancedExperienceImages {
        AppClipAdvancedExperienceImages(path: path + "/appClipAdvancedExperienceImages")
    }

    public struct AppClipAdvancedExperienceImages {
        /// Path: `/v1/appClipAdvancedExperienceImages`
        public let path: String

        public func post(_ body: AppClipAdvancedExperienceImageCreateRequest) -> Request<AppClipAdvancedExperienceImageResponse> {
            Request(path: path, method: "POST", body: body, id: "appClipAdvancedExperienceImages-create_instance")
        }
    }
}
