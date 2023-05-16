// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct AppStoreReviewAttachmentsResponse: Codable {
    public var data: [AppStoreReviewAttachment]
    public var included: [AppStoreReviewDetail]?
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppStoreReviewAttachment], included: [AppStoreReviewDetail]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode([AppStoreReviewAttachment].self, forKey: "data")
        self.included = try values.decodeIfPresent([AppStoreReviewDetail].self, forKey: "included")
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
