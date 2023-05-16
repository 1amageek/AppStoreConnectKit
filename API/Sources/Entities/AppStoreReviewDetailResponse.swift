// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct AppStoreReviewDetailResponse: Codable {
    /// AppStoreReviewDetail
    public var data: AppStoreReviewDetail
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable {
        case appStoreVersion(AppStoreVersion)
        case appStoreReviewAttachment(AppStoreReviewAttachment)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppStoreVersion.self) {
                self = .appStoreVersion(value)
            } else if let value = try? container.decode(AppStoreReviewAttachment.self) {
                self = .appStoreReviewAttachment(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppStoreVersion, AppStoreReviewAttachment)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appStoreVersion(let value): try container.encode(value)
            case .appStoreReviewAttachment(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppStoreReviewDetail, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(AppStoreReviewDetail.self, forKey: "data")
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