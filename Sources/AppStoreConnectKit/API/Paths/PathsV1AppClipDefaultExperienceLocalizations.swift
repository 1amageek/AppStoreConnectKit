// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations {
        AppClipDefaultExperienceLocalizations(path: path + "/appClipDefaultExperienceLocalizations")
    }

    public struct AppClipDefaultExperienceLocalizations {
        /// Path: `/v1/appClipDefaultExperienceLocalizations`
        public let path: String

        public func post(_ body: AppClipDefaultExperienceLocalizationCreateRequest) -> Request<AppClipDefaultExperienceLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "appClipDefaultExperienceLocalizations-create_instance")
        }
    }
}
