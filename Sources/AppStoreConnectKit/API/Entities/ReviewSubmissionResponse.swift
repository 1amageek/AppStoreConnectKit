// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct ReviewSubmissionResponse: Codable {
    /// ReviewSubmission
    public var data: ReviewSubmission
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable {
        case app(App)
        case reviewSubmissionItem(ReviewSubmissionItem)
        case appStoreVersion(AppStoreVersion)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(App.self) {
                self = .app(value)
            } else if let value = try? container.decode(ReviewSubmissionItem.self) {
                self = .reviewSubmissionItem(value)
            } else if let value = try? container.decode(AppStoreVersion.self) {
                self = .appStoreVersion(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (App, ReviewSubmissionItem, AppStoreVersion)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .app(let value): try container.encode(value)
            case .reviewSubmissionItem(let value): try container.encode(value)
            case .appStoreVersion(let value): try container.encode(value)
            }
        }
    }

    public init(data: ReviewSubmission, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(ReviewSubmission.self, forKey: "data")
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
