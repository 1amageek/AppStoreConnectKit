// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppStoreVersions.WithID.Relationships {
    public var customerReviews: CustomerReviews {
        CustomerReviews(path: path + "/customerReviews")
    }

    public struct CustomerReviews {
        /// Path: `/v1/appStoreVersions/{id}/relationships/customerReviews`
        public let path: String
    }
}
