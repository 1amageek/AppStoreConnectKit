// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var appPriceSchedules: AppPriceSchedules {
        AppPriceSchedules(path: path + "/appPriceSchedules")
    }

    public struct AppPriceSchedules {
        /// Path: `/v1/appPriceSchedules`
        public let path: String

        public func post(_ body: API.AppPriceScheduleCreateRequest) -> Request<API.AppPriceScheduleResponse> {
            Request(path: path, method: "POST", body: body, id: "appPriceSchedules-create_instance")
        }
    }
}
