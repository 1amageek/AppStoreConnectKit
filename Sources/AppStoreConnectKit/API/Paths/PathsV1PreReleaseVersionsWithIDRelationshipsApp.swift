// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.PreReleaseVersions.WithID.Relationships {
    public var app: App {
        App(path: path + "/app")
    }

    public struct App {
        /// Path: `/v1/preReleaseVersions/{id}/relationships/app`
        public let path: String
    }
}