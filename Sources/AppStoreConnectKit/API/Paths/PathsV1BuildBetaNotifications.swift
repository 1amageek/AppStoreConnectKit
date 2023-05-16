// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var buildBetaNotifications: BuildBetaNotifications {
        BuildBetaNotifications(path: path + "/buildBetaNotifications")
    }

    public struct BuildBetaNotifications {
        /// Path: `/v1/buildBetaNotifications`
        public let path: String

        public func post(_ body: BuildBetaNotificationCreateRequest) -> Request<BuildBetaNotificationResponse> {
            Request(path: path, method: "POST", body: body, id: "buildBetaNotifications-create_instance")
        }
    }
}
