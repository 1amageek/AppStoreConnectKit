// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var endUserLicenseAgreements: EndUserLicenseAgreements {
        EndUserLicenseAgreements(path: path + "/endUserLicenseAgreements")
    }

    public struct EndUserLicenseAgreements {
        /// Path: `/v1/endUserLicenseAgreements`
        public let path: String

        public func post(_ body: EndUserLicenseAgreementCreateRequest) -> Request<EndUserLicenseAgreementResponse> {
            Request(path: path, method: "POST", body: body, id: "endUserLicenseAgreements-create_instance")
        }
    }
}