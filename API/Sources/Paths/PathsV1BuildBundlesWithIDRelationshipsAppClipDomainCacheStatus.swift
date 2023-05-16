// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.BuildBundles.WithID.Relationships {
    public var appClipDomainCacheStatus: AppClipDomainCacheStatus {
        AppClipDomainCacheStatus(path: path + "/appClipDomainCacheStatus")
    }

    public struct AppClipDomainCacheStatus {
        /// Path: `/v1/buildBundles/{id}/relationships/appClipDomainCacheStatus`
        public let path: String
    }
}
