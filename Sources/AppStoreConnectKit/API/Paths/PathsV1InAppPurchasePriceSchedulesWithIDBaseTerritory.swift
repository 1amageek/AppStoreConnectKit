// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.InAppPurchasePriceSchedules.WithID {
    public var baseTerritory: BaseTerritory {
        BaseTerritory(path: path + "/baseTerritory")
    }

    public struct BaseTerritory {
        /// Path: `/v1/inAppPurchasePriceSchedules/{id}/baseTerritory`
        public let path: String

        public func get(fieldsTerritories: [FieldsTerritories]? = nil) -> Request<TerritoryResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsTerritories), id: "inAppPurchasePriceSchedules-baseTerritory-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsTerritories: [FieldsTerritories]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsTerritories, forKey: "fields[territories]", explode: false)
            return encoder.items
        }

        public enum FieldsTerritories: String, Codable, CaseIterable {
            case currency
        }
    }
}
