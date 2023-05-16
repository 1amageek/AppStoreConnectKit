// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.SubscriptionAvailabilities {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionAvailabilities/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.SubscriptionAvailabilityResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptionAvailabilities-get_instance")
        }

        public struct GetParameters {
            public var fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities]?
            public var include: [Include]?
            public var fieldsTerritories: [FieldsTerritories]?
            public var limitAvailableTerritories: Int?

            public enum FieldsSubscriptionAvailabilities: String, Codable, CaseIterable {
                case availableInNewTerritories
                case availableTerritories
                case subscription
            }

            public enum Include: String, Codable, CaseIterable {
                case availableTerritories
                case subscription
            }

            public enum FieldsTerritories: String, Codable, CaseIterable {
                case currency
            }

            public init(fieldsSubscriptionAvailabilities: [FieldsSubscriptionAvailabilities]? = nil, include: [Include]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitAvailableTerritories: Int? = nil) {
                self.fieldsSubscriptionAvailabilities = fieldsSubscriptionAvailabilities
                self.include = include
                self.fieldsTerritories = fieldsTerritories
                self.limitAvailableTerritories = limitAvailableTerritories
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsSubscriptionAvailabilities, forKey: "fields[subscriptionAvailabilities]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsTerritories, forKey: "fields[territories]")
                encoder.encode(limitAvailableTerritories, forKey: "limit[availableTerritories]")
                return encoder.items
            }
        }
    }
}
