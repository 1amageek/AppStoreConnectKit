// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appStoreVersionLocalizations: AppStoreVersionLocalizations {
        AppStoreVersionLocalizations(path: path + "/appStoreVersionLocalizations")
    }

    public struct AppStoreVersionLocalizations {
        /// Path: `/v1/appStoreVersionLocalizations`
        public let path: String

        public func post(_ body: AppStoreVersionLocalizationCreateRequest) -> Request<AppStoreVersionLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "appStoreVersionLocalizations-create_instance")
        }
    }
}
