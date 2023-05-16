// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.InAppPurchaseAppStoreReviewScreenshots {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/inAppPurchaseAppStoreReviewScreenshots/{id}`
        public let path: String

        public func get(fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]? = nil, include: [Include]? = nil) -> Request<API.InAppPurchaseAppStoreReviewScreenshotResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsInAppPurchaseAppStoreReviewScreenshots, include), id: "inAppPurchaseAppStoreReviewScreenshots-get_instance")
        }

        private func makeGetQuery(_ fieldsInAppPurchaseAppStoreReviewScreenshots: [FieldsInAppPurchaseAppStoreReviewScreenshots]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsInAppPurchaseAppStoreReviewScreenshots, forKey: "fields[inAppPurchaseAppStoreReviewScreenshots]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsInAppPurchaseAppStoreReviewScreenshots: String, Codable, CaseIterable {
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case inAppPurchaseV2
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum Include: String, Codable, CaseIterable {
            case inAppPurchaseV2
        }

        public func patch(_ body: API.InAppPurchaseAppStoreReviewScreenshotUpdateRequest) -> Request<API.InAppPurchaseAppStoreReviewScreenshotResponse> {
            Request(path: path, method: "PATCH", body: body, id: "inAppPurchaseAppStoreReviewScreenshots-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "inAppPurchaseAppStoreReviewScreenshots-delete_instance")
        }
    }
}
