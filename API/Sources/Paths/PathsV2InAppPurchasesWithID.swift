// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V2.InAppPurchases {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v2/inAppPurchases/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.InAppPurchaseV2Response> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "inAppPurchases-get_instance")
        }

        public struct GetParameters {
            public var fieldsInAppPurchases: [FieldsInAppPurchases]?
            public var include: [Include]?
            public var fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]?
            public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
            public var fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]?
            public var fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]?
            public var fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]?
            public var fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]?
            public var limitInAppPurchaseLocalizations: Int?
            public var limitPricePoints: Int?

            public enum FieldsInAppPurchases: String, Codable, CaseIterable {
                case app
                case appStoreReviewScreenshot
                case availableInAllTerritories
                case content
                case contentHosting
                case familySharable
                case iapPriceSchedule
                case inAppPurchaseLocalizations
                case inAppPurchaseType
                case name
                case pricePoints
                case productID = "productId"
                case promotedPurchase
                case reviewNote
                case state
            }

            public enum Include: String, Codable, CaseIterable {
                case appStoreReviewScreenshot
                case content
                case iapPriceSchedule
                case inAppPurchaseLocalizations
                case pricePoints
                case promotedPurchase
            }

            public enum FieldsInAppPurchaseAppStoreReviewScreenshots: String, Codable, CaseIterable {
                case assetDeliveryState
                case assetToken
                case assetType
                case fileName
                case fileSize
                case imageAsset
                case inAppPurchaseV2
                case sourceFileChecksum
                case uploadOperations
                case uploaded
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

            public enum FieldsInAppPurchasePricePoints: String, Codable, CaseIterable {
                case customerPrice
                case inAppPurchaseV2
                case priceTier
                case proceeds
                case territory
            }

            public enum FieldsInAppPurchaseLocalizations: String, Codable, CaseIterable {
                case description
                case inAppPurchaseV2
                case locale
                case name
                case state
            }

            public enum FieldsInAppPurchasePriceSchedules: String, Codable, CaseIterable {
                case automaticPrices
                case baseTerritory
                case inAppPurchase
                case manualPrices
            }

            public enum FieldsInAppPurchaseContents: String, Codable, CaseIterable {
                case fileName
                case fileSize
                case inAppPurchaseV2
                case lastModifiedDate
                case url
            }

            public init(fieldsInAppPurchases: [FieldsInAppPurchases]? = nil, include: [Include]? = nil, fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]? = nil, fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]? = nil, fieldsInAppPurchaseLocalizations: [FieldsInAppPurchaseLocalizations]? = nil, fieldsInAppPurchasePriceSchedules: [FieldsInAppPurchasePriceSchedules]? = nil, fieldsInAppPurchaseContents: [FieldsInAppPurchaseContents]? = nil, limitInAppPurchaseLocalizations: Int? = nil, limitPricePoints: Int? = nil) {
                self.fieldsInAppPurchases = fieldsInAppPurchases
                self.include = include
                self.fieldsInAppPurchaseAppStoreReviewScreenshots = fieldsInAppPurchaseAppStoreReviewScreenshots
                self.fieldsPromotedPurchases = fieldsPromotedPurchases
                self.fieldsInAppPurchasePricePoints = fieldsInAppPurchasePricePoints
                self.fieldsInAppPurchaseLocalizations = fieldsInAppPurchaseLocalizations
                self.fieldsInAppPurchasePriceSchedules = fieldsInAppPurchasePriceSchedules
                self.fieldsInAppPurchaseContents = fieldsInAppPurchaseContents
                self.limitInAppPurchaseLocalizations = limitInAppPurchaseLocalizations
                self.limitPricePoints = limitPricePoints
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsInAppPurchases, forKey: "fields[inAppPurchases]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsInAppPurchaseAppStoreReviewScreenshots, forKey: "fields[inAppPurchaseAppStoreReviewScreenshots]")
                encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
                encoder.encode(fieldsInAppPurchasePricePoints, forKey: "fields[inAppPurchasePricePoints]")
                encoder.encode(fieldsInAppPurchaseLocalizations, forKey: "fields[inAppPurchaseLocalizations]")
                encoder.encode(fieldsInAppPurchasePriceSchedules, forKey: "fields[inAppPurchasePriceSchedules]")
                encoder.encode(fieldsInAppPurchaseContents, forKey: "fields[inAppPurchaseContents]")
                encoder.encode(limitInAppPurchaseLocalizations, forKey: "limit[inAppPurchaseLocalizations]")
                encoder.encode(limitPricePoints, forKey: "limit[pricePoints]")
                return encoder.items
            }
        }

        public func patch(_ body: API.InAppPurchaseV2UpdateRequest) -> Request<API.InAppPurchaseV2Response> {
            Request(path: path, method: "PATCH", body: body, id: "inAppPurchases-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "inAppPurchases-delete_instance")
        }
    }
}
