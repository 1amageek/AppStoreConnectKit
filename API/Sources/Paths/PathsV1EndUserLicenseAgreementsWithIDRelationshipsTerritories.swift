// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.EndUserLicenseAgreements.WithID.Relationships {
    public var territories: Territories {
        Territories(path: path + "/territories")
    }

    public struct Territories {
        /// Path: `/v1/endUserLicenseAgreements/{id}/relationships/territories`
        public let path: String
    }
}
