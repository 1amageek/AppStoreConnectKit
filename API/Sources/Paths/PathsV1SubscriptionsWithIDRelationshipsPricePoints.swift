// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.Subscriptions.WithID.Relationships {
    public var pricePoints: PricePoints {
        PricePoints(path: path + "/pricePoints")
    }

    public struct PricePoints {
        /// Path: `/v1/subscriptions/{id}/relationships/pricePoints`
        public let path: String
    }
}
