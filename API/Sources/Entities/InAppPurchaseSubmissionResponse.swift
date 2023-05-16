// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct InAppPurchaseSubmissionResponse: Codable {
    /// InAppPurchaseSubmission
    public var data: InAppPurchaseSubmission
    public var included: [InAppPurchaseV2]?
    public var links: DocumentLinks

    public init(data: InAppPurchaseSubmission, included: [InAppPurchaseV2]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(InAppPurchaseSubmission.self, forKey: "data")
        self.included = try values.decodeIfPresent([InAppPurchaseV2].self, forKey: "included")
        self.links = try values.decode(DocumentLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(data, forKey: "data")
        try values.encodeIfPresent(included, forKey: "included")
        try values.encode(links, forKey: "links")
    }
}
