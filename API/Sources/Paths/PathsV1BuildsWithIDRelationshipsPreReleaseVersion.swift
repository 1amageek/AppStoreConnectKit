// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.Builds.WithID.Relationships {
    public var preReleaseVersion: PreReleaseVersion {
        PreReleaseVersion(path: path + "/preReleaseVersion")
    }

    public struct PreReleaseVersion {
        /// Path: `/v1/builds/{id}/relationships/preReleaseVersion`
        public let path: String
    }
}
