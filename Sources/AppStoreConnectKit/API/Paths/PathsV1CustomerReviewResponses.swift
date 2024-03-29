// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var customerReviewResponses: CustomerReviewResponses {
        CustomerReviewResponses(path: path + "/customerReviewResponses")
    }

    public struct CustomerReviewResponses {
        /// Path: `/v1/customerReviewResponses`
        public let path: String

        public func post(_ body: CustomerReviewResponseV1CreateRequest) -> Request<CustomerReviewResponseV1Response> {
            Request(path: path, method: "POST", body: body, id: "customerReviewResponses-create_instance")
        }
    }
}
