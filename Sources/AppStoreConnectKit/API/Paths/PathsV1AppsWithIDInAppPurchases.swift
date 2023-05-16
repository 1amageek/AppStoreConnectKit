// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.Apps.WithID {
    public var inAppPurchases: InAppPurchases {
        InAppPurchases(path: path + "/inAppPurchases")
    }

    public struct InAppPurchases {
        /// Path: `/v1/apps/{id}/inAppPurchases`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func get(parameters: GetParameters? = nil) -> Request<InAppPurchasesResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps-inAppPurchases-get_to_many_related")
        }

        public struct GetParameters {
            public var filterInAppPurchaseType: [FilterInAppPurchaseType]?
            public var filterCanBeSubmitted: [String]?
            public var sort: [Sort]?
            public var fieldsInAppPurchases: [FieldsInAppPurchases]?
            public var fieldsApps: [FieldsApps]?
            public var limit: Int?
            public var limitApps: Int?
            public var include: [Include]?

            public enum FilterInAppPurchaseType: String, Codable, CaseIterable {
                case automaticallyRenewableSubscription = "AUTOMATICALLY_RENEWABLE_SUBSCRIPTION"
                case nonConsumable = "NON_CONSUMABLE"
                case consumable = "CONSUMABLE"
                case nonRenewingSubscription = "NON_RENEWING_SUBSCRIPTION"
                case freeSubscription = "FREE_SUBSCRIPTION"
            }

            public enum Sort: String, Codable, CaseIterable {
                case inAppPurchaseType
                case minusinAppPurchaseType = "-inAppPurchaseType"
                case productID = "productId"
                case minusproductID = "-productId"
                case referenceName
                case minusreferenceName = "-referenceName"
            }

            public enum FieldsInAppPurchases: String, Codable, CaseIterable {
                case apps
                case inAppPurchaseType
                case productID = "productId"
                case referenceName
                case state
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

            public enum Include: String, Codable, CaseIterable {
                case apps
            }

            public init(filterInAppPurchaseType: [FilterInAppPurchaseType]? = nil, filterCanBeSubmitted: [String]? = nil, sort: [Sort]? = nil, fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, limitApps: Int? = nil, include: [Include]? = nil) {
                self.filterInAppPurchaseType = filterInAppPurchaseType
                self.filterCanBeSubmitted = filterCanBeSubmitted
                self.sort = sort
                self.fieldsInAppPurchases = fieldsInAppPurchases
                self.fieldsApps = fieldsApps
                self.limit = limit
                self.limitApps = limitApps
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterInAppPurchaseType, forKey: "filter[inAppPurchaseType]")
                encoder.encode(filterCanBeSubmitted, forKey: "filter[canBeSubmitted]")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
                encoder.encode(fieldsApps, forKey: "fields[apps]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(limitApps, forKey: "limit[apps]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
