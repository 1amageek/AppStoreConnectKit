// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var buildBetaDetails: BuildBetaDetails {
        BuildBetaDetails(path: path + "/buildBetaDetails")
    }

    public struct BuildBetaDetails {
        /// Path: `/v1/buildBetaDetails`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<BuildBetaDetailsResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "buildBetaDetails-get_collection")
        }

        public struct GetParameters {
            public var filterBuild: [String]?
            public var filterID: [String]?
            public var fieldsBuildBetaDetails: [FieldsBuildBetaDetails]?
            public var limit: Int?
            public var include: [Include]?
            public var fieldsBuilds: [FieldsBuilds]?

            public enum FieldsBuildBetaDetails: String, Codable, CaseIterable {
                case autoNotifyEnabled
                case build
                case externalBuildState
                case internalBuildState
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

            public init(filterBuild: [String]? = nil, filterID: [String]? = nil, fieldsBuildBetaDetails: [FieldsBuildBetaDetails]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsBuilds: [FieldsBuilds]? = nil) {
                self.filterBuild = filterBuild
                self.filterID = filterID
                self.fieldsBuildBetaDetails = fieldsBuildBetaDetails
                self.limit = limit
                self.include = include
                self.fieldsBuilds = fieldsBuilds
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterBuild, forKey: "filter[build]")
                encoder.encode(filterID, forKey: "filter[id]")
                encoder.encode(fieldsBuildBetaDetails, forKey: "fields[buildBetaDetails]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsBuilds, forKey: "fields[builds]")
                return encoder.items
            }
        }
    }
}
