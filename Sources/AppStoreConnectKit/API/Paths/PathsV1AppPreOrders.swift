// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appPreOrders: AppPreOrders {
        AppPreOrders(path: path + "/appPreOrders")
    }

    public struct AppPreOrders {
        /// Path: `/v1/appPreOrders`
        public let path: String

        public func post(_ body: AppPreOrderCreateRequest) -> Request<AppPreOrderResponse> {
            Request(path: path, method: "POST", body: body, id: "appPreOrders-create_instance")
        }
    }
}
