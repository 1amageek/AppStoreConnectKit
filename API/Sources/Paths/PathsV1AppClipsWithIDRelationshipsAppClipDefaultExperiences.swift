// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppClips.WithID.Relationships {
    public var appClipDefaultExperiences: AppClipDefaultExperiences {
        AppClipDefaultExperiences(path: path + "/appClipDefaultExperiences")
    }

    public struct AppClipDefaultExperiences {
        /// Path: `/v1/appClips/{id}/relationships/appClipDefaultExperiences`
        public let path: String
    }
}
