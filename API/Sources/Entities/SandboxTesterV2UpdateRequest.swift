// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct SandboxTesterV2UpdateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case sandboxTesters
        }

        public struct Attributes: Codable {
            public var territory: TerritoryCode?
            public var isInterruptPurchases: Bool?
            public var subscriptionRenewalRate: SubscriptionRenewalRate?

            public enum SubscriptionRenewalRate: String, Codable, CaseIterable {
                case monthlyRenewalEveryOneHour = "MONTHLY_RENEWAL_EVERY_ONE_HOUR"
                case monthlyRenewalEveryThirtyMinutes = "MONTHLY_RENEWAL_EVERY_THIRTY_MINUTES"
                case monthlyRenewalEveryFifteenMinutes = "MONTHLY_RENEWAL_EVERY_FIFTEEN_MINUTES"
                case monthlyRenewalEveryFiveMinutes = "MONTHLY_RENEWAL_EVERY_FIVE_MINUTES"
                case monthlyRenewalEveryThreeMinutes = "MONTHLY_RENEWAL_EVERY_THREE_MINUTES"
            }

            public init(territory: TerritoryCode? = nil, isInterruptPurchases: Bool? = nil, subscriptionRenewalRate: SubscriptionRenewalRate? = nil) {
                self.territory = territory
                self.isInterruptPurchases = isInterruptPurchases
                self.subscriptionRenewalRate = subscriptionRenewalRate
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.territory = try values.decodeIfPresent(TerritoryCode.self, forKey: "territory")
                self.isInterruptPurchases = try values.decodeIfPresent(Bool.self, forKey: "interruptPurchases")
                self.subscriptionRenewalRate = try values.decodeIfPresent(SubscriptionRenewalRate.self, forKey: "subscriptionRenewalRate")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(territory, forKey: "territory")
                try values.encodeIfPresent(isInterruptPurchases, forKey: "interruptPurchases")
                try values.encodeIfPresent(subscriptionRenewalRate, forKey: "subscriptionRenewalRate")
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
