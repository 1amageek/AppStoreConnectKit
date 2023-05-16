// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.InAppPurchasePriceSchedules.WithID.Relationships {
    public var manualPrices: ManualPrices {
        ManualPrices(path: path + "/manualPrices")
    }

    public struct ManualPrices {
        /// Path: `/v1/inAppPurchasePriceSchedules/{id}/relationships/manualPrices`
        public let path: String
    }
}
