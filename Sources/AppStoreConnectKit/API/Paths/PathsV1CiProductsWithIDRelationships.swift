// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.CiProducts.WithID {
    public var relationships: Relationships {
        Relationships(path: path + "/relationships")
    }

    public struct Relationships {
        /// Path: `/v1/ciProducts/{id}/relationships`
        public let path: String
    }
}
