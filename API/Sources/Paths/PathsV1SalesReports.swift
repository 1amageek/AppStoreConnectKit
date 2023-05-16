// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1 {
    public var salesReports: SalesReports {
        SalesReports(path: path + "/salesReports")
    }

    public struct SalesReports {
        /// Path: `/v1/salesReports`
        public let path: String

        public func get(parameters: GetParameters) -> Request<Data> {
            Request(path: path, method: "GET", query: parameters.asQuery, id: "salesReports-get_collection")
        }

        public struct GetParameters {
            public var filterFrequency: [FilterFrequency]
            public var filterReportDate: [String]?
            public var filterReportSubType: [FilterReportSubType]
            public var filterReportType: [FilterReportType]
            public var filterVendorNumber: [String]
            public var filterVersion: [String]?

            public enum FilterFrequency: String, Codable, CaseIterable {
                case daily = "DAILY"
                case weekly = "WEEKLY"
                case monthly = "MONTHLY"
                case yearly = "YEARLY"
            }

            public enum FilterReportSubType: String, Codable, CaseIterable {
                case summary = "SUMMARY"
                case detailed = "DETAILED"
            }

            public enum FilterReportType: String, Codable, CaseIterable {
                case sales = "SALES"
                case preOrder = "PRE_ORDER"
                case newsstand = "NEWSSTAND"
                case subscription = "SUBSCRIPTION"
                case subscriptionEvent = "SUBSCRIPTION_EVENT"
                case subscriber = "SUBSCRIBER"
                case subscriptionOfferCodeRedemption = "SUBSCRIPTION_OFFER_CODE_REDEMPTION"
            }

            public init(filterFrequency: [FilterFrequency], filterReportDate: [String]? = nil, filterReportSubType: [FilterReportSubType], filterReportType: [FilterReportType], filterVendorNumber: [String], filterVersion: [String]? = nil) {
                self.filterFrequency = filterFrequency
                self.filterReportDate = filterReportDate
                self.filterReportSubType = filterReportSubType
                self.filterReportType = filterReportType
                self.filterVendorNumber = filterVendorNumber
                self.filterVersion = filterVersion
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterFrequency, forKey: "filter[frequency]")
                encoder.encode(filterReportDate, forKey: "filter[reportDate]")
                encoder.encode(filterReportSubType, forKey: "filter[reportSubType]")
                encoder.encode(filterReportType, forKey: "filter[reportType]")
                encoder.encode(filterVendorNumber, forKey: "filter[vendorNumber]")
                encoder.encode(filterVersion, forKey: "filter[version]")
                return encoder.items
            }
        }
    }
}