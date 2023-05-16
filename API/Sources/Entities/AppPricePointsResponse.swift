// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

@available(*, deprecated, message: "Deprecated")
public struct AppPricePointsResponse: Codable {
    public var data: [AppPricePoint]
    public var included: [IncludedItem]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public enum IncludedItem: Codable {
        case appPriceTier(AppPriceTier)
        case territory(Territory)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppPriceTier.self) {
                self = .appPriceTier(value)
            } else if let value = try? container.decode(Territory.self) {
                self = .territory(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppPriceTier, Territory)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appPriceTier(let value): try container.encode(value)
            case .territory(let value): try container.encode(value)
            }
        }
    }

    public init(data: [AppPricePoint], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode([AppPricePoint].self, forKey: "data")
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
