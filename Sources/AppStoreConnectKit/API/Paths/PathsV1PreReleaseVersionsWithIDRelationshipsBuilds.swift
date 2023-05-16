// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.PreReleaseVersions.WithID.Relationships {
    public var builds: Builds {
        Builds(path: path + "/builds")
    }

    public struct Builds {
        /// Path: `/v1/preReleaseVersions/{id}/relationships/builds`
        public let path: String
    }
}
