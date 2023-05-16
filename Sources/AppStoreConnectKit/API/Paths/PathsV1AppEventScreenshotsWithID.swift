// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.AppEventScreenshots {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appEventScreenshots/{id}`
        public let path: String

        public func get(fieldsAppEventScreenshots: [FieldsAppEventScreenshots]? = nil, include: [Include]? = nil) -> Request<AppEventScreenshotResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppEventScreenshots, include), id: "appEventScreenshots-get_instance")
        }

        private func makeGetQuery(_ fieldsAppEventScreenshots: [FieldsAppEventScreenshots]?, _ include: [Include]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder(explode: false)
            encoder.encode(fieldsAppEventScreenshots, forKey: "fields[appEventScreenshots]")
            encoder.encode(include, forKey: "include")
            return encoder.items
        }

        public enum FieldsAppEventScreenshots: String, Codable, CaseIterable {
            case appEventAssetType
            case appEventLocalization
            case assetDeliveryState
            case assetToken
            case fileName
            case fileSize
            case imageAsset
            case uploadOperations
            case uploaded
        }

        public enum Include: String, Codable, CaseIterable {
            case appEventLocalization
        }

        public func patch(_ body: AppEventScreenshotUpdateRequest) -> Request<AppEventScreenshotResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appEventScreenshots-update_instance")
        }

        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "appEventScreenshots-delete_instance")
        }
    }
}
