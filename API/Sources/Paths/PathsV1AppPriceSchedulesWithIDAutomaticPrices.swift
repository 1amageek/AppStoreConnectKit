// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppPriceSchedules.WithID {
    public var automaticPrices: AutomaticPrices {
        AutomaticPrices(path: path + "/automaticPrices")
    }

    public struct AutomaticPrices {
        /// Path: `/v1/appPriceSchedules/{id}/automaticPrices`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.AppPricesV2Response> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "appPriceSchedules-automaticPrices-get_to_many_related")
        }

        public struct GetParameters {
            public var filterEndDate: [String]?
            public var filterStartDate: [String]?
            public var filterTerritory: [String]?
            public var fieldsAppPrices: [FieldsAppPrices]?
            public var fieldsAppPricePoints: [FieldsAppPricePoints]?
            public var fieldsTerritories: [FieldsTerritories]?
            public var limit: Int?
            public var include: [Include]?

            public enum FieldsAppPrices: String, Codable, CaseIterable {
                case appPricePoint
                case endDate
                case manual
                case startDate
                case territory
            }

            public enum FieldsAppPricePoints: String, Codable, CaseIterable {
                case app
                case customerPrice
                case equalizations
                case proceeds
                case territory
            }

            public enum FieldsTerritories: String, Codable, CaseIterable {
                case currency
            }

            public enum Include: String, Codable, CaseIterable {
                case appPricePoint
                case territory
            }

            public init(filterEndDate: [String]? = nil, filterStartDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
                self.filterEndDate = filterEndDate
                self.filterStartDate = filterStartDate
                self.filterTerritory = filterTerritory
                self.fieldsAppPrices = fieldsAppPrices
                self.fieldsAppPricePoints = fieldsAppPricePoints
                self.fieldsTerritories = fieldsTerritories
                self.limit = limit
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterEndDate, forKey: "filter[endDate]")
                encoder.encode(filterStartDate, forKey: "filter[startDate]")
                encoder.encode(filterTerritory, forKey: "filter[territory]")
                encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
                encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
                encoder.encode(fieldsTerritories, forKey: "fields[territories]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
