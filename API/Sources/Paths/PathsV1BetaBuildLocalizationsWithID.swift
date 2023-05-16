// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.BetaBuildLocalizations {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaBuildLocalizations/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.BetaBuildLocalizationResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "betaBuildLocalizations-get_instance")
        }

        public struct GetParameters {
            public var fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]?
            public var include: [Include]?
            public var fieldsBuilds: [FieldsBuilds]?

            public enum FieldsBetaBuildLocalizations: String, Codable, CaseIterable {
                case build
                case locale
                case whatsNew
            }

            public enum Include: String, Codable, CaseIterable {
                case build
            }

            public enum FieldsBuilds: String, Codable, CaseIterable {
                case app
                case appEncryptionDeclaration
                case appStoreVersion
                case betaAppReviewSubmission
                case betaBuildLocalizations
                case betaGroups
                case buildAudienceType
                case buildBetaDetail
                case buildBundles
                case computedMinMacOsVersion
                case diagnosticSignatures
                case expirationDate
                case expired
                case iconAssetToken
                case icons
                case individualTesters
                case lsMinimumSystemVersion
                case minOsVersion
                case perfPowerMetrics
                case preReleaseVersion
                case processingState
                case uploadedDate
                case usesNonExemptEncryption
                case version
            }

            public init(fieldsBetaBuildLocalizations: [FieldsBetaBuildLocalizations]? = nil, include: [Include]? = nil, fieldsBuilds: [FieldsBuilds]? = nil) {
                self.fieldsBetaBuildLocalizations = fieldsBetaBuildLocalizations
                self.include = include
                self.fieldsBuilds = fieldsBuilds
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsBetaBuildLocalizations, forKey: "fields[betaBuildLocalizations]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsBuilds, forKey: "fields[builds]")
                return encoder.items
            }
        }

        public func patch(_ body: API.BetaBuildLocalizationUpdateRequest) -> Request<API.BetaBuildLocalizationResponse> {
            Request(path: path, method: "PATCH", body: body, id: "betaBuildLocalizations-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "betaBuildLocalizations-delete_instance")
        }
    }
}
