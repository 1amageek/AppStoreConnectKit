// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct InAppPurchasePriceScheduleCreateRequest: Codable {
    public var data: Data
    public var included: [IncludedItem]?

    public struct Data: Codable {
        public var type: `Type`
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case inAppPurchasePriceSchedules
        }

        public struct Relationships: Codable {
            public var inAppPurchase: InAppPurchase
            public var baseTerritory: BaseTerritory?
            public var manualPrices: ManualPrices

            public struct InAppPurchase: Codable {
                public var data: Data

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

            public struct BaseTerritory: Codable {
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

            public struct ManualPrices: Codable {
                public var data: [Datum]

                public struct Datum: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case inAppPurchasePrices
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

                public init(data: [Datum]) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decode([Datum].self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(data, forKey: "data")
                }
            }

            public init(inAppPurchase: InAppPurchase, baseTerritory: BaseTerritory? = nil, manualPrices: ManualPrices) {
                self.inAppPurchase = inAppPurchase
                self.baseTerritory = baseTerritory
                self.manualPrices = manualPrices
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.inAppPurchase = try values.decode(InAppPurchase.self, forKey: "inAppPurchase")
                self.baseTerritory = try values.decodeIfPresent(BaseTerritory.self, forKey: "baseTerritory")
                self.manualPrices = try values.decode(ManualPrices.self, forKey: "manualPrices")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(inAppPurchase, forKey: "inAppPurchase")
                try values.encodeIfPresent(baseTerritory, forKey: "baseTerritory")
                try values.encode(manualPrices, forKey: "manualPrices")
            }
        }

        public init(type: `Type`, relationships: Relationships) {
            self.type = type
            self.relationships = relationships
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.type = try values.decode(`Type`.self, forKey: "type")
            self.relationships = try values.decode(Relationships.self, forKey: "relationships")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(type, forKey: "type")
            try values.encode(relationships, forKey: "relationships")
        }
    }

    public enum IncludedItem: Codable {
        case inAppPurchasePriceInlineCreate(InAppPurchasePriceInlineCreate)
        case territoryInlineCreate(TerritoryInlineCreate)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(InAppPurchasePriceInlineCreate.self) {
                self = .inAppPurchasePriceInlineCreate(value)
            } else if let value = try? container.decode(TerritoryInlineCreate.self) {
                self = .territoryInlineCreate(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (InAppPurchasePriceInlineCreate, TerritoryInlineCreate)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .inAppPurchasePriceInlineCreate(let value): try container.encode(value)
            case .territoryInlineCreate(let value): try container.encode(value)
            }
        }
    }

    public init(data: Data, included: [IncludedItem]? = nil) {
        self.data = data
        self.included = included
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(Data.self, forKey: "data")
        self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(data, forKey: "data")
        try values.encodeIfPresent(included, forKey: "included")
    }
}
