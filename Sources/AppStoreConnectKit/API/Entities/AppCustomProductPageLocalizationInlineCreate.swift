// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct AppCustomProductPageLocalizationInlineCreate: Codable {
    public var type: `Type`
    public var id: String?
    public var attributes: Attributes
    public var relationships: Relationships?

    public enum `Type`: String, Codable, CaseIterable {
        case appCustomProductPageLocalizations
    }

    public struct Attributes: Codable {
        public var locale: String
        public var promotionalText: String?

        public init(locale: String, promotionalText: String? = nil) {
            self.locale = locale
            self.promotionalText = promotionalText
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.locale = try values.decode(String.self, forKey: "locale")
            self.promotionalText = try values.decodeIfPresent(String.self, forKey: "promotionalText")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(locale, forKey: "locale")
            try values.encodeIfPresent(promotionalText, forKey: "promotionalText")
        }
    }

    public struct Relationships: Codable {
        public var appCustomProductPageVersion: AppCustomProductPageVersion?

        public struct AppCustomProductPageVersion: Codable {
            public var data: Data?

            public struct Data: Codable {
                public var type: `Type`
                public var id: String

                public enum `Type`: String, Codable, CaseIterable {
                    case appCustomProductPageVersions
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

        public init(appCustomProductPageVersion: AppCustomProductPageVersion? = nil) {
            self.appCustomProductPageVersion = appCustomProductPageVersion
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.appCustomProductPageVersion = try values.decodeIfPresent(AppCustomProductPageVersion.self, forKey: "appCustomProductPageVersion")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(appCustomProductPageVersion, forKey: "appCustomProductPageVersion")
        }
    }

    public init(type: `Type`, id: String? = nil, attributes: Attributes, relationships: Relationships? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.id = try values.decodeIfPresent(String.self, forKey: "id")
        self.attributes = try values.decode(Attributes.self, forKey: "attributes")
        self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(id, forKey: "id")
        try values.encode(attributes, forKey: "attributes")
        try values.encodeIfPresent(relationships, forKey: "relationships")
    }
}
