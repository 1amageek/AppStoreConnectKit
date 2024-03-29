// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appAvailabilities: AppAvailabilities {
        AppAvailabilities(path: path + "/appAvailabilities")
    }

    public struct AppAvailabilities {
        /// Path: `/v1/appAvailabilities`
        public let path: String

        public func post(_ body: AppAvailabilityCreateRequest) -> Request<AppAvailabilityResponse> {
            Request(path: path, method: "POST", body: body, id: "appAvailabilities-create_instance")
        }
    }
}
