// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct AppPriceScheduleResponse: Codable {
    /// AppPriceSchedule
    public var data: AppPriceSchedule
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable {
        case app(App)
        case territory(Territory)
        case appPriceV2(AppPriceV2)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(Territory.self) {
                self = .territory(value)
            } else if let value = try? container.decode(AppPriceV2.self) {
                self = .appPriceV2(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, Territory, AppPriceV2)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .territory(let value): try container.encode(value)
            case .appPriceV2(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppPriceSchedule, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(AppPriceSchedule.self, forKey: "data")
        self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
        self.links = try values.decode(DocumentLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(data, forKey: "data")
        try values.encodeIfPresent(included, forKey: "included")
        try values.encode(links, forKey: "links")
    }
}
