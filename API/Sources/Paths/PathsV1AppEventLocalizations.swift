// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appEventLocalizations: AppEventLocalizations {
        AppEventLocalizations(path: path + "/appEventLocalizations")
    }

    public struct AppEventLocalizations {
        /// Path: `/v1/appEventLocalizations`
        public let path: String

        public func post(_ body: API.AppEventLocalizationCreateRequest) -> Request<API.AppEventLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "appEventLocalizations-create_instance")
        }
    }
}
