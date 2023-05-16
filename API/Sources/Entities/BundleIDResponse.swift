// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct BundleIDResponse: Codable {
    /// BundleId
    public var data: BundleID
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable {
        case profile(Profile)
        case bundleIDCapability(BundleIDCapability)
        case app(App)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Profile.self) {
                self = .profile(value)
            } else if let value = try? container.decode(BundleIDCapability.self) {
                self = .bundleIDCapability(value)
            } else if let value = try? container.decode(App.self) {
                self = .app(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Profile, BundleIDCapability, App)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .profile(let value): try container.encode(value)
            case .bundleIDCapability(let value): try container.encode(value)
            case .app(let value): try container.encode(value)
            }
        }
    }

    public init(data: BundleID, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(BundleID.self, forKey: "data")
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
