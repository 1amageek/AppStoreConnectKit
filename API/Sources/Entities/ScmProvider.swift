// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct ScmProvider: Codable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case scmProviders
    }

    public struct Attributes: Codable {
        public var scmProviderType: ScmProviderType?
        public var url: URL?

        public init(scmProviderType: ScmProviderType? = nil, url: URL? = nil) {
            self.scmProviderType = scmProviderType
            self.url = url
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.scmProviderType = try values.decodeIfPresent(ScmProviderType.self, forKey: "scmProviderType")
            self.url = try values.decodeIfPresent(URL.self, forKey: "url")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(scmProviderType, forKey: "scmProviderType")
            try values.encodeIfPresent(url, forKey: "url")
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.id = try values.decode(String.self, forKey: "id")
        self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
        self.links = try values.decode(ResourceLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(attributes, forKey: "attributes")
        try values.encode(links, forKey: "links")
    }
}
