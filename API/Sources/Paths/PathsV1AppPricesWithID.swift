// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppPrices {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appPrices/{id}`
        public let path: String

        @available(*, deprecated, message: "Deprecated")
        public func get(fieldsAppPrices: [FieldsAppPrices]? = nil, include: [Include]? = nil) -> Request<API.AppPriceResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppPrices, include), id: "appPrices-get_instance")
        }

        private func makeGetQuery(_ fieldsAppPrices: [FieldsAppPrices]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppPrices: String, Codable, CaseIterable {
            case app
            case priceTier
        }

        public enum Include: String, Codable, CaseIterable {
            case app
            case priceTier
        }
    }
}
