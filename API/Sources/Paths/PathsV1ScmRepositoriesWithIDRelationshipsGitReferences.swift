// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.ScmRepositories.WithID.Relationships {
    public var gitReferences: GitReferences {
        GitReferences(path: path + "/gitReferences")
    }

    public struct GitReferences {
        /// Path: `/v1/scmRepositories/{id}/relationships/gitReferences`
        public let path: String
    }
}
