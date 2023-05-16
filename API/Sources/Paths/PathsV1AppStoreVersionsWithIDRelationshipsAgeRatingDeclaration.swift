// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppStoreVersions.WithID.Relationships {
    public var ageRatingDeclaration: AgeRatingDeclaration {
        AgeRatingDeclaration(path: path + "/ageRatingDeclaration")
    }

    public struct AgeRatingDeclaration {
        /// Path: `/v1/appStoreVersions/{id}/relationships/ageRatingDeclaration`
        public let path: String
    }
}
