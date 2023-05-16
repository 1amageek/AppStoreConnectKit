// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct AppPreOrderCreateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var attributes: Attributes?
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case appPreOrders
        }

        public struct Attributes: Codable {
            public var appReleaseDate: NaiveDate?

            public init(appReleaseDate: NaiveDate? = nil) {
                self.appReleaseDate = appReleaseDate
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.appReleaseDate = try values.decodeIfPresent(NaiveDate.self, forKey: "appReleaseDate")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(appReleaseDate, forKey: "appReleaseDate")
            }
        }

        public struct Relationships: Codable {
            public var app: App

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

            public init(app: App) {
                self.app = app
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.app = try values.decode(App.self, forKey: "app")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(app, forKey: "app")
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
