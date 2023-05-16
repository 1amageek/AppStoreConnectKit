// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct PromotedPurchaseCreateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case promotedPurchases
        }

        public struct Attributes: Codable {
            public var isVisibleForAllUsers: Bool
            public var isEnabled: Bool?

            public init(isVisibleForAllUsers: Bool, isEnabled: Bool? = nil) {
                self.isVisibleForAllUsers = isVisibleForAllUsers
                self.isEnabled = isEnabled
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.isVisibleForAllUsers = try values.decode(Bool.self, forKey: "visibleForAllUsers")
                self.isEnabled = try values.decodeIfPresent(Bool.self, forKey: "enabled")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(isVisibleForAllUsers, forKey: "visibleForAllUsers")
                try values.encodeIfPresent(isEnabled, forKey: "enabled")
            }
        }

        public struct Relationships: Codable {
            public var app: App
            public var inAppPurchaseV2: InAppPurchaseV2?
            public var subscription: Subscription?

            public struct App: Codable {
                public var data: Data

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case apps
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

            public struct InAppPurchaseV2: Codable {
                public var data: Data?

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case inAppPurchases
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

            public struct Subscription: Codable {
                public var data: Data?

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

            public init(app: App, inAppPurchaseV2: InAppPurchaseV2? = nil, subscription: Subscription? = nil) {
                self.app = app
                self.inAppPurchaseV2 = inAppPurchaseV2
                self.subscription = subscription
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.app = try values.decode(App.self, forKey: "app")
                self.inAppPurchaseV2 = try values.decodeIfPresent(InAppPurchaseV2.self, forKey: "inAppPurchaseV2")
                self.subscription = try values.decodeIfPresent(Subscription.self, forKey: "subscription")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(app, forKey: "app")
                try values.encodeIfPresent(inAppPurchaseV2, forKey: "inAppPurchaseV2")
                try values.encodeIfPresent(subscription, forKey: "subscription")
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.type = try values.decode(`Type`.self, forKey: "type")
            self.attributes = try values.decode(Attributes.self, forKey: "attributes")
            self.relationships = try values.decode(Relationships.self, forKey: "relationships")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(type, forKey: "type")
            try values.encode(attributes, forKey: "attributes")
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
