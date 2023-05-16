// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.BetaAppReviewDetails {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/betaAppReviewDetails/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<BetaAppReviewDetailResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "betaAppReviewDetails-get_instance")
        }

        public struct GetParameters {
            public var fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]?
            public var include: [Include]?
            public var fieldsApps: [FieldsApps]?

            public enum FieldsBetaAppReviewDetails: String, Codable, CaseIterable {
                case app
                case contactEmail
                case contactFirstName
                case contactLastName
                case contactPhone
                case demoAccountName
                case demoAccountPassword
                case demoAccountRequired
                case notes
            }

            public enum Include: String, Codable, CaseIterable {
                case app
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

            public init(fieldsBetaAppReviewDetails: [FieldsBetaAppReviewDetails]? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) {
                self.fieldsBetaAppReviewDetails = fieldsBetaAppReviewDetails
                self.include = include
                self.fieldsApps = fieldsApps
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsBetaAppReviewDetails, forKey: "fields[betaAppReviewDetails]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsApps, forKey: "fields[apps]")
                return encoder.items
            }
        }

        public func patch(_ body: BetaAppReviewDetailUpdateRequest) -> Request<BetaAppReviewDetailResponse> {
            Request(path: path, method: "PATCH", body: body, id: "betaAppReviewDetails-update_instance")
        }
    }
}
