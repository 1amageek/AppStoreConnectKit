// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct SubscriptionSubmission: Codable {
    public var type: `Type`
    public var id: String
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case subscriptionSubmissions
    }

    public struct Relationships: Codable {
        public var subscription: Subscription?

        public struct Subscription: Codable {
            public var links: Links?
            public var data: Data?

            public struct Links: Codable {
                public var this: String?
                public var related: String?

                public init(this: String? = nil, related: String? = nil) {
                    self.this = this
                    self.related = related
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.this = try values.decodeIfPresent(String.self, forKey: "self")
                    self.related = try values.decodeIfPresent(String.self, forKey: "related")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(this, forKey: "self")
                    try values.encodeIfPresent(related, forKey: "related")
                }
            }

            public struct Data: Codable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case subscriptions
                }

                public init(type: `Type`, id: String) {
                    self.type = type
                    self.id = id
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.type = try values.decode(`Type`.self, forKey: "type")
                    self.id = try values.decode(String.self, forKey: "id")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(type, forKey: "type")
                    try values.encode(id, forKey: "id")
                }
            }

            public init(links: Links? = nil, data: Data? = nil) {
                self.links = links
                self.data = data
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.links = try values.decodeIfPresent(Links.self, forKey: "links")
                self.data = try values.decodeIfPresent(Data.self, forKey: "data")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(links, forKey: "links")
                try values.encodeIfPresent(data, forKey: "data")
            }
        }

        public init(subscription: Subscription? = nil) {
            self.subscription = subscription
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.subscription = try values.decodeIfPresent(Subscription.self, forKey: "subscription")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(subscription, forKey: "subscription")
        }
    }

    public init(type: `Type`, id: String, relationships: Relationships? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.relationships = relationships
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.id = try values.decode(String.self, forKey: "id")
        self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
        self.links = try values.decode(ResourceLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(relationships, forKey: "relationships")
        try values.encode(links, forKey: "links")
    }
}
