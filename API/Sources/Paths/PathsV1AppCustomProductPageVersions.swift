// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appCustomProductPageVersions: AppCustomProductPageVersions {
        AppCustomProductPageVersions(path: path + "/appCustomProductPageVersions")
    }

    public struct AppCustomProductPageVersions {
        /// Path: `/v1/appCustomProductPageVersions`
        public let path: String

        public func post(_ body: API.AppCustomProductPageVersionCreateRequest) -> Request<API.AppCustomProductPageVersionResponse> {
            Request(path: path, method: "POST", body: body, id: "appCustomProductPageVersions-create_instance")
        }
    }
}
