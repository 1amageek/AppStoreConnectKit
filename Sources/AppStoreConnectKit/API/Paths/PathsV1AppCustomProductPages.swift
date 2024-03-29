// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appCustomProductPages: AppCustomProductPages {
        AppCustomProductPages(path: path + "/appCustomProductPages")
    }

    public struct AppCustomProductPages {
        /// Path: `/v1/appCustomProductPages`
        public let path: String

        public func post(_ body: AppCustomProductPageCreateRequest) -> Request<AppCustomProductPageResponse> {
            Request(path: path, method: "POST", body: body, id: "appCustomProductPages-create_instance")
        }
    }
}
