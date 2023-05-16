// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var betaAppLocalizations: BetaAppLocalizations {
        BetaAppLocalizations(path: path + "/betaAppLocalizations")
    }

    public struct BetaAppLocalizations {
        /// Path: `/v1/betaAppLocalizations`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.BetaAppLocalizationsResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "betaAppLocalizations-get_collection")
        }

        public struct GetParameters {
            public var filterLocale: [String]?
            public var filterApp: [String]?
            public var fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]?
            public var limit: Int?
            public var include: [Include]?
            public var fieldsApps: [FieldsApps]?

            public enum FieldsBetaAppLocalizations: String, Codable, CaseIterable {
                case app
                case description
                case feedbackEmail
                case locale
                case marketingURL = "marketingUrl"
                case privacyPolicyURL = "privacyPolicyUrl"
                case tvOsPrivacyPolicy
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

            public init(filterLocale: [String]? = nil, filterApp: [String]? = nil, fieldsBetaAppLocalizations: [FieldsBetaAppLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil) {
                self.filterLocale = filterLocale
                self.filterApp = filterApp
                self.fieldsBetaAppLocalizations = fieldsBetaAppLocalizations
                self.limit = limit
                self.include = include
                self.fieldsApps = fieldsApps
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterLocale, forKey: "filter[locale]")
                encoder.encode(filterApp, forKey: "filter[app]")
                encoder.encode(fieldsBetaAppLocalizations, forKey: "fields[betaAppLocalizations]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsApps, forKey: "fields[apps]")
                return encoder.items
            }
        }

        public func post(_ body: API.BetaAppLocalizationCreateRequest) -> Request<API.BetaAppLocalizationResponse> {
            Request(path: path, method: "POST", body: body, id: "betaAppLocalizations-create_instance")
        }
    }
}