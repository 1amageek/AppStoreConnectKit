// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations {
        AppCustomProductPageLocalizations(path: path + "/appCustomProductPageLocalizations")
    }

    public struct AppCustomProductPageLocalizations {
        /// Path: `/v1/appCustomProductPageLocalizations`
        public let path: String

        public func post(_ body: AppCustomProductPageLocalizationCreateRequest) -> Request<AppCustomProductPageLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "appCustomProductPageLocalizations-create_instance")
        }
    }
}