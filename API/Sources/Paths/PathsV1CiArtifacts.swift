// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var ciArtifacts: CiArtifacts {
        CiArtifacts(path: path + "/ciArtifacts")
    }

    public struct CiArtifacts {
        /// Path: `/v1/ciArtifacts`
        public let path: String
    }
}
