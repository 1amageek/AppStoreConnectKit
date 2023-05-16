// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.EndUserLicenseAgreements {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/endUserLicenseAgreements/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.EndUserLicenseAgreementResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "endUserLicenseAgreements-get_instance")
        }

        public struct GetParameters {
            public var fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]?
            public var include: [Include]?
            public var fieldsTerritories: [FieldsTerritories]?
            public var limitTerritories: Int?

            public enum FieldsEndUserLicenseAgreements: String, Codable, CaseIterable {
                case agreementText
                case app
                case territories
            }

            public enum Include: String, Codable, CaseIterable {
                case app
                case territories
            }

            public enum FieldsTerritories: String, Codable, CaseIterable {
                case currency
            }

            public init(fieldsEndUserLicenseAgreements: [FieldsEndUserLicenseAgreements]? = nil, include: [Include]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitTerritories: Int? = nil) {
                self.fieldsEndUserLicenseAgreements = fieldsEndUserLicenseAgreements
                self.include = include
                self.fieldsTerritories = fieldsTerritories
                self.limitTerritories = limitTerritories
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsEndUserLicenseAgreements, forKey: "fields[endUserLicenseAgreements]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsTerritories, forKey: "fields[territories]")
                encoder.encode(limitTerritories, forKey: "limit[territories]")
                return encoder.items
            }
        }

        public func patch(_ body: API.EndUserLicenseAgreementUpdateRequest) -> Request<API.EndUserLicenseAgreementResponse> {
            Request(path: path, method: "PATCH", body: body, id: "endUserLicenseAgreements-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "endUserLicenseAgreements-delete_instance")
        }
    }
}
