// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.ReviewSubmissions.WithID.Relationships {
    public var items: Items {
        Items(path: path + "/items")
    }

    public struct Items {
        /// Path: `/v1/reviewSubmissions/{id}/relationships/items`
        public let path: String
    }
}
