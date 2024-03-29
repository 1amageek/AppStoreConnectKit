// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.InAppPurchaseAvailabilities.WithID.Relationships {
    public var availableTerritories: AvailableTerritories {
        AvailableTerritories(path: path + "/availableTerritories")
    }

    public struct AvailableTerritories {
        /// Path: `/v1/inAppPurchaseAvailabilities/{id}/relationships/availableTerritories`
        public let path: String
    }
}
