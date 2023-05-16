// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.AgeRatingDeclarations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/ageRatingDeclarations/{id}`
        public let path: String

        public func patch(_ body: AgeRatingDeclarationUpdateRequest) -> Request<AgeRatingDeclarationResponse> {
            Request(path: path, method: "PATCH", body: body, id: "ageRatingDeclarations-update_instance")
        }
    }
}
