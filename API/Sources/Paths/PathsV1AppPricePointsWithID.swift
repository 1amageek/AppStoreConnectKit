// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppPricePoints {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appPricePoints/{id}`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func get(parameters: GetParameters? = nil) -> Request<API.AppPricePointResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "appPricePoints-get_instance")
        }

        public struct GetParameters {
            public var fieldsAppPricePoints: [FieldsAppPricePoints]?
            public var include: [Include]?
            public var fieldsTerritories: [FieldsTerritories]?

            public enum FieldsAppPricePoints: String, Codable, CaseIterable {
                case customerPrice
                case priceTier
                case proceeds
                case territory
            }

            public enum Include: String, Codable, CaseIterable {
                case priceTier
                case territory
            }

            public enum FieldsTerritories: String, Codable, CaseIterable {
                case currency
            }

            public init(fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, include: [Include]? = nil, fieldsTerritories: [FieldsTerritories]? = nil) {
                self.fieldsAppPricePoints = fieldsAppPricePoints
                self.include = include
                self.fieldsTerritories = fieldsTerritories
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsTerritories, forKey: "fields[territories]")
                return encoder.items
            }
        }
    }
}
