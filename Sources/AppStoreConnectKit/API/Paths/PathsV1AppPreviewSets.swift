// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appPreviewSets: AppPreviewSets {
        AppPreviewSets(path: path + "/appPreviewSets")
    }

    public struct AppPreviewSets {
        /// Path: `/v1/appPreviewSets`
        public let path: String

        public func post(_ body: AppPreviewSetCreateRequest) -> Request<AppPreviewSetResponse> {
            Request(path: path, method: "POST", body: body, id: "appPreviewSets-create_instance")
        }
    }
}