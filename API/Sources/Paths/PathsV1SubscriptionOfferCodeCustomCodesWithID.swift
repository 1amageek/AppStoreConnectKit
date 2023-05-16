// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.SubscriptionOfferCodeCustomCodes {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/subscriptionOfferCodeCustomCodes/{id}`
        public let path: String

        public func get(fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes]? = nil, include: [Include]? = nil) -> Request<API.SubscriptionOfferCodeCustomCodeResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsSubscriptionOfferCodeCustomCodes, include), id: "subscriptionOfferCodeCustomCodes-get_instance")
        }

        private func makeGetQuery(_ fieldsSubscriptionOfferCodeCustomCodes: [FieldsSubscriptionOfferCodeCustomCodes]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsSubscriptionOfferCodeCustomCodes, forKey: "fields[subscriptionOfferCodeCustomCodes]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsSubscriptionOfferCodeCustomCodes: String, Codable, CaseIterable {
            case active
            case createdDate
            case customCode
            case expirationDate
            case numberOfCodes
            case offerCode
        }

        public enum Include: String, Codable, CaseIterable {
            case offerCode
        }

        public func patch(_ body: API.SubscriptionOfferCodeCustomCodeUpdateRequest) -> Request<API.SubscriptionOfferCodeCustomCodeResponse> {
            Request(path: path, method: "PATCH", body: body, id: "subscriptionOfferCodeCustomCodes-update_instance")
        }
    }
}
