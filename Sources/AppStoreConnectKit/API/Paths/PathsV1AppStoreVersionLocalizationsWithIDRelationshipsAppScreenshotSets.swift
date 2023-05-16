// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.AppStoreVersionLocalizations.WithID.Relationships {
    public var appScreenshotSets: AppScreenshotSets {
        AppScreenshotSets(path: path + "/appScreenshotSets")
    }

    public struct AppScreenshotSets {
        /// Path: `/v1/appStoreVersionLocalizations/{id}/relationships/appScreenshotSets`
        public let path: String
    }
}