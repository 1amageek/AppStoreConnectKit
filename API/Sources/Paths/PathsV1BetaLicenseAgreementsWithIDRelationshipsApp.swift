// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.BetaLicenseAgreements.WithID.Relationships {
    public var app: App {
        App(path: path + "/app")
    }

    public struct App {
        /// Path: `/v1/betaLicenseAgreements/{id}/relationships/app`
        public let path: String
    }
}
