// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.BuildBundles.WithID.Relationships {
    public var appClipDomainDebugStatus: AppClipDomainDebugStatus {
        AppClipDomainDebugStatus(path: path + "/appClipDomainDebugStatus")
    }

    public struct AppClipDomainDebugStatus {
        /// Path: `/v1/buildBundles/{id}/relationships/appClipDomainDebugStatus`
        public let path: String
    }
}