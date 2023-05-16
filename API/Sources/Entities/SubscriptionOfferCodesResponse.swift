// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct SubscriptionOfferCodesResponse: Codable {
    public var data: [SubscriptionOfferCode]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable {
        case subscription(Subscription)
        case subscriptionOfferCodeOneTimeUseCode(SubscriptionOfferCodeOneTimeUseCode)
        case subscriptionOfferCodeCustomCode(SubscriptionOfferCodeCustomCode)
        case subscriptionOfferCodePrice(SubscriptionOfferCodePrice)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Subscription.self) {
                self = .subscription(value)
            } else if let value = try? container.decode(SubscriptionOfferCodeOneTimeUseCode.self) {
                self = .subscriptionOfferCodeOneTimeUseCode(value)
            } else if let value = try? container.decode(SubscriptionOfferCodeCustomCode.self) {
                self = .subscriptionOfferCodeCustomCode(value)
            } else if let value = try? container.decode(SubscriptionOfferCodePrice.self) {
                self = .subscriptionOfferCodePrice(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Subscription, SubscriptionOfferCodeOneTimeUseCode, SubscriptionOfferCodeCustomCode, SubscriptionOfferCodePrice)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .subscription(let value): try container.encode(value)
            case .subscriptionOfferCodeOneTimeUseCode(let value): try container.encode(value)
            case .subscriptionOfferCodeCustomCode(let value): try container.encode(value)
            case .subscriptionOfferCodePrice(let value): try container.encode(value)
            }
        }
    }

    public init(data: [SubscriptionOfferCode], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode([SubscriptionOfferCode].self, forKey: "data")
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