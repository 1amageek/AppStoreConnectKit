// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct SubscriptionPriceCreateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var attributes: Attributes?
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case subscriptionPrices
        }

        public struct Attributes: Codable {
            public var startDate: NaiveDate?
            public var isPreserveCurrentPrice: Bool?

            public init(startDate: NaiveDate? = nil, isPreserveCurrentPrice: Bool? = nil) {
                self.startDate = startDate
                self.isPreserveCurrentPrice = isPreserveCurrentPrice
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.startDate = try values.decodeIfPresent(NaiveDate.self, forKey: "startDate")
                self.isPreserveCurrentPrice = try values.decodeIfPresent(Bool.self, forKey: "preserveCurrentPrice")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(startDate, forKey: "startDate")
                try values.encodeIfPresent(isPreserveCurrentPrice, forKey: "preserveCurrentPrice")
            }
        }

        public struct Relationships: Codable {
            public var subscription: Subscription
            public var territory: Territory?
            public var subscriptionPricePoint: SubscriptionPricePoint

            public struct Subscription: Codable {
                public var data: Data

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

                public init(data: Data) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decode(Data.self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(data, forKey: "data")
                }
            }

            public struct Territory: Codable {
                public var data: Data?

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case territories
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

                public init(data: Data? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decodeIfPresent(Data.self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(data, forKey: "data")
                }
            }

            public struct SubscriptionPricePoint: Codable {
                public var data: Data

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case subscriptionPricePoints
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

                public init(data: Data) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decode(Data.self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(data, forKey: "data")
                }
            }

            public init(subscription: Subscription, territory: Territory? = nil, subscriptionPricePoint: SubscriptionPricePoint) {
                self.subscription = subscription
                self.territory = territory
                self.subscriptionPricePoint = subscriptionPricePoint
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.subscription = try values.decode(Subscription.self, forKey: "subscription")
                self.territory = try values.decodeIfPresent(Territory.self, forKey: "territory")
                self.subscriptionPricePoint = try values.decode(SubscriptionPricePoint.self, forKey: "subscriptionPricePoint")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(subscription, forKey: "subscription")
                try values.encodeIfPresent(territory, forKey: "territory")
                try values.encode(subscriptionPricePoint, forKey: "subscriptionPricePoint")
            }
        }

        public init(type: `Type`, attributes: Attributes? = nil, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.type = try values.decode(`Type`.self, forKey: "type")
            self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
            self.relationships = try values.decode(Relationships.self, forKey: "relationships")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(type, forKey: "type")
            try values.encodeIfPresent(attributes, forKey: "attributes")
            try values.encode(relationships, forKey: "relationships")
        }
    }

    public init(data: Data) {
        self.data = data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(Data.self, forKey: "data")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(data, forKey: "data")
    }
}
