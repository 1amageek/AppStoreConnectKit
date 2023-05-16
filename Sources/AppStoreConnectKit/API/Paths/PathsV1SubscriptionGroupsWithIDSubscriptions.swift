// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.SubscriptionGroups.WithID {
    public var subscriptions: Subscriptions {
        Subscriptions(path: path + "/subscriptions")
    }

    public struct Subscriptions {
        /// Path: `/v1/subscriptionGroups/{id}/subscriptions`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<SubscriptionsResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptionGroups-subscriptions-get_to_many_related")
        }

        public struct GetParameters {
            public var filterName: [String]?
            public var filterProductID: [String]?
            public var filterState: [FilterState]?
            public var sort: [Sort]?
            public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
            public var fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]?
            public var fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]?
            public var fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots]?
            public var fieldsSubscriptions: [FieldsSubscriptions]?
            public var fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?
            public var fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers]?
            public var fieldsSubscriptionPrices: [FieldsSubscriptionPrices]?
            public var fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]?
            public var limit: Int?
            public var limitSubscriptionLocalizations: Int?
            public var limitIntroductoryOffers: Int?
            public var limitPromotionalOffers: Int?
            public var limitOfferCodes: Int?
            public var limitPrices: Int?
            public var include: [Include]?

            public enum FilterState: String, Codable, CaseIterable {
                case missingMetadata = "MISSING_METADATA"
                case readyToSubmit = "READY_TO_SUBMIT"
                case waitingForReview = "WAITING_FOR_REVIEW"
                case inReview = "IN_REVIEW"
                case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
                case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
                case approved = "APPROVED"
                case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
                case removedFromSale = "REMOVED_FROM_SALE"
                case rejected = "REJECTED"
            }

            public enum Sort: String, Codable, CaseIterable {
                case name
                case minusname = "-name"
            }

            public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
                case app
                case enabled
                case inAppPurchaseV2
                case promotionImages
                case state
                case subscription
                case visibleForAllUsers
            }

            public enum FieldsSubscriptionPromotionalOffers: String, Codable, CaseIterable {
                case duration
                case name
                case numberOfPeriods
                case offerCode
                case offerMode
                case prices
                case subscription
            }

            public enum FieldsSubscriptionOfferCodes: String, Codable, CaseIterable {
                case active
                case customCodes
                case customerEligibilities
                case duration
                case name
                case numberOfPeriods
                case offerEligibility
                case offerMode
                case oneTimeUseCodes
                case prices
                case subscription
                case totalNumberOfCodes
            }

            public enum FieldsSubscriptionAppStoreReviewScreenshots: String, Codable, CaseIterable {
                case assetDeliveryState
                case assetToken
                case assetType
                case fileName
                case fileSize
                case imageAsset
                case sourceFileChecksum
                case subscription
                case uploadOperations
                case uploaded
            }

            public enum FieldsSubscriptions: String, Codable, CaseIterable {
                case appStoreReviewScreenshot
                case availableInAllTerritories
                case familySharable
                case group
                case groupLevel
                case introductoryOffers
                case name
                case offerCodes
                case pricePoints
                case prices
                case productID = "productId"
                case promotedPurchase
                case promotionalOffers
                case reviewNote
                case state
                case subscriptionLocalizations
                case subscriptionPeriod
            }

            public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
                case app
                case referenceName
                case subscriptionGroupLocalizations
                case subscriptions
            }

            public enum FieldsSubscriptionIntroductoryOffers: String, Codable, CaseIterable {
                case duration
                case endDate
                case numberOfPeriods
                case offerMode
                case startDate
                case subscription
                case subscriptionPricePoint
                case territory
            }

            public enum FieldsSubscriptionPrices: String, Codable, CaseIterable {
                case preserveCurrentPrice
                case preserved
                case startDate
                case subscription
                case subscriptionPricePoint
                case territory
            }

            public enum FieldsSubscriptionLocalizations: String, Codable, CaseIterable {
                case description
                case locale
                case name
                case state
                case subscription
            }

            public enum Include: String, Codable, CaseIterable {
                case appStoreReviewScreenshot
                case group
                case introductoryOffers
                case offerCodes
                case prices
                case promotedPurchase
                case promotionalOffers
                case subscriptionLocalizations
            }

            public init(filterName: [String]? = nil, filterProductID: [String]? = nil, filterState: [FilterState]? = nil, sort: [Sort]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsSubscriptionPromotionalOffers: [FieldsSubscriptionPromotionalOffers]? = nil, fieldsSubscriptionOfferCodes: [FieldsSubscriptionOfferCodes]? = nil, fieldsSubscriptionAppStoreReviewScreenshots: [FieldsSubscriptionAppStoreReviewScreenshots]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsSubscriptionIntroductoryOffers: [FieldsSubscriptionIntroductoryOffers]? = nil, fieldsSubscriptionPrices: [FieldsSubscriptionPrices]? = nil, fieldsSubscriptionLocalizations: [FieldsSubscriptionLocalizations]? = nil, limit: Int? = nil, limitSubscriptionLocalizations: Int? = nil, limitIntroductoryOffers: Int? = nil, limitPromotionalOffers: Int? = nil, limitOfferCodes: Int? = nil, limitPrices: Int? = nil, include: [Include]? = nil) {
                self.filterName = filterName
                self.filterProductID = filterProductID
                self.filterState = filterState
                self.sort = sort
                self.fieldsPromotedPurchases = fieldsPromotedPurchases
                self.fieldsSubscriptionPromotionalOffers = fieldsSubscriptionPromotionalOffers
                self.fieldsSubscriptionOfferCodes = fieldsSubscriptionOfferCodes
                self.fieldsSubscriptionAppStoreReviewScreenshots = fieldsSubscriptionAppStoreReviewScreenshots
                self.fieldsSubscriptions = fieldsSubscriptions
                self.fieldsSubscriptionGroups = fieldsSubscriptionGroups
                self.fieldsSubscriptionIntroductoryOffers = fieldsSubscriptionIntroductoryOffers
                self.fieldsSubscriptionPrices = fieldsSubscriptionPrices
                self.fieldsSubscriptionLocalizations = fieldsSubscriptionLocalizations
                self.limit = limit
                self.limitSubscriptionLocalizations = limitSubscriptionLocalizations
                self.limitIntroductoryOffers = limitIntroductoryOffers
                self.limitPromotionalOffers = limitPromotionalOffers
                self.limitOfferCodes = limitOfferCodes
                self.limitPrices = limitPrices
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterName, forKey: "filter[name]")
                encoder.encode(filterProductID, forKey: "filter[productId]")
                encoder.encode(filterState, forKey: "filter[state]")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
                encoder.encode(fieldsSubscriptionPromotionalOffers, forKey: "fields[subscriptionPromotionalOffers]")
                encoder.encode(fieldsSubscriptionOfferCodes, forKey: "fields[subscriptionOfferCodes]")
                encoder.encode(fieldsSubscriptionAppStoreReviewScreenshots, forKey: "fields[subscriptionAppStoreReviewScreenshots]")
                encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
                encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
                encoder.encode(fieldsSubscriptionIntroductoryOffers, forKey: "fields[subscriptionIntroductoryOffers]")
                encoder.encode(fieldsSubscriptionPrices, forKey: "fields[subscriptionPrices]")
                encoder.encode(fieldsSubscriptionLocalizations, forKey: "fields[subscriptionLocalizations]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(limitSubscriptionLocalizations, forKey: "limit[subscriptionLocalizations]")
                encoder.encode(limitIntroductoryOffers, forKey: "limit[introductoryOffers]")
                encoder.encode(limitPromotionalOffers, forKey: "limit[promotionalOffers]")
                encoder.encode(limitOfferCodes, forKey: "limit[offerCodes]")
                encoder.encode(limitPrices, forKey: "limit[prices]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
