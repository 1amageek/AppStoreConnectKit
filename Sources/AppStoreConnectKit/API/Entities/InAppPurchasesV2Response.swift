// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct InAppPurchasesV2Response: Codable {
    public var data: [InAppPurchaseV2]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable {
        case inAppPurchaseLocalization(InAppPurchaseLocalization)
        case inAppPurchasePricePoint(InAppPurchasePricePoint)
        case inAppPurchaseContent(InAppPurchaseContent)
        case inAppPurchaseAppStoreReviewScreenshot(InAppPurchaseAppStoreReviewScreenshot)
        case promotedPurchase(PromotedPurchase)
        case inAppPurchasePriceSchedule(InAppPurchasePriceSchedule)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(InAppPurchaseLocalization.self) {
                self = .inAppPurchaseLocalization(value)
            } else if let value = try? container.decode(InAppPurchasePricePoint.self) {
                self = .inAppPurchasePricePoint(value)
            } else if let value = try? container.decode(InAppPurchaseContent.self) {
                self = .inAppPurchaseContent(value)
            } else if let value = try? container.decode(InAppPurchaseAppStoreReviewScreenshot.self) {
                self = .inAppPurchaseAppStoreReviewScreenshot(value)
            } else if let value = try? container.decode(PromotedPurchase.self) {
                self = .promotedPurchase(value)
            } else if let value = try? container.decode(InAppPurchasePriceSchedule.self) {
                self = .inAppPurchasePriceSchedule(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (InAppPurchaseLocalization, InAppPurchasePricePoint, InAppPurchaseContent, InAppPurchaseAppStoreReviewScreenshot, PromotedPurchase, InAppPurchasePriceSchedule)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .inAppPurchaseLocalization(let value): try container.encode(value)
            case .inAppPurchasePricePoint(let value): try container.encode(value)
            case .inAppPurchaseContent(let value): try container.encode(value)
            case .inAppPurchaseAppStoreReviewScreenshot(let value): try container.encode(value)
            case .promotedPurchase(let value): try container.encode(value)
            case .inAppPurchasePriceSchedule(let value): try container.encode(value)
            }
        }
    }

    public init(data: [InAppPurchaseV2], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode([InAppPurchaseV2].self, forKey: "data")
        self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
        self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
        self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(data, forKey: "data")
        try values.encodeIfPresent(included, forKey: "included")
        try values.encode(links, forKey: "links")
        try values.encodeIfPresent(meta, forKey: "meta")
    }
}