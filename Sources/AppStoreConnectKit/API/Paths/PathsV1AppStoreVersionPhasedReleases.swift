// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appStoreVersionPhasedReleases: AppStoreVersionPhasedReleases {
        AppStoreVersionPhasedReleases(path: path + "/appStoreVersionPhasedReleases")
    }

    public struct AppStoreVersionPhasedReleases {
        /// Path: `/v1/appStoreVersionPhasedReleases`
        public let path: String

        public func post(_ body: AppStoreVersionPhasedReleaseCreateRequest) -> Request<AppStoreVersionPhasedReleaseResponse> {
            Request(path: path, method: "POST", body: body, id: "appStoreVersionPhasedReleases-create_instance")
        }
    }
}
