// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.Profiles.WithID.Relationships {
    public var devices: Devices {
        Devices(path: path + "/devices")
    }

    public struct Devices {
        /// Path: `/v1/profiles/{id}/relationships/devices`
        public let path: String
    }
}
