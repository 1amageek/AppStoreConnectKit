// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.PreReleaseVersions {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/preReleaseVersions/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<PrereleaseVersionResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "preReleaseVersions-get_instance")
        }

        public struct GetParameters {
            public var fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?
            public var include: [Include]?
            public var fieldsApps: [FieldsApps]?
            public var fieldsBuilds: [FieldsBuilds]?
            public var limitBuilds: Int?

            public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
                case app
                case builds
                case platform
                case version
            }

            public enum Include: String, Codable, CaseIterable {
                case app
                case builds
            }

            public enum FieldsApps: String, Codable, CaseIterable {
                case appAvailability
                case appClips
                case appCustomProductPages
                case appEvents
                case appInfos
                case appPricePoints
                case appPriceSchedule
                case appStoreVersions
                case availableInNewTerritories
                case availableTerritories
                case betaAppLocalizations
                case betaAppReviewDetail
                case betaGroups
                case betaLicenseAgreement
                case betaTesters
                case builds
                case bundleID = "bundleId"
                case ciProduct
                case contentRightsDeclaration
                case customerReviews
                case endUserLicenseAgreement
                case gameCenterEnabledVersions
                case inAppPurchases
                case inAppPurchasesV2
                case isOrEverWasMadeForKids
                case name
                case perfPowerMetrics
                case preOrder
                case preReleaseVersions
                case pricePoints
                case prices
                case primaryLocale
                case promotedPurchases
                case reviewSubmissions
                case sku
                case subscriptionGracePeriod
                case subscriptionGroups
                case subscriptionStatusURL = "subscriptionStatusUrl"
                case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
                case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
                case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
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

            public init(fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, limitBuilds: Int? = nil) {
                self.fieldsPreReleaseVersions = fieldsPreReleaseVersions
                self.include = include
                self.fieldsApps = fieldsApps
                self.fieldsBuilds = fieldsBuilds
                self.limitBuilds = limitBuilds
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsApps, forKey: "fields[apps]")
                encoder.encode(fieldsBuilds, forKey: "fields[builds]")
                encoder.encode(limitBuilds, forKey: "limit[builds]")
                return encoder.items
            }
        }
    }
}
