// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct AppPreOrderUpdateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case appPreOrders
        }

        public struct Attributes: Codable {
            public var appReleaseDate: Date?

            public init(appReleaseDate: Date? = nil) {
                self.appReleaseDate = appReleaseDate
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.appReleaseDate = try values.decodeIfPresent(Date.self, forKey: "appReleaseDate")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(appReleaseDate, forKey: "appReleaseDate")
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.type = try values.decode(`Type`.self, forKey: "type")
            self.id = try values.decode(String.self, forKey: "id")
            self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(type, forKey: "type")
            try values.encode(id, forKey: "id")
            try values.encodeIfPresent(attributes, forKey: "attributes")
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