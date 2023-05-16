// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppClipAdvancedExperienceImages {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appClipAdvancedExperienceImages/{id}`
        public let path: String

        public func get(fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages]? = nil) -> Request<API.AppClipAdvancedExperienceImageResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppClipAdvancedExperienceImages), id: "appClipAdvancedExperienceImages-get_instance")
        }

        private func makeGetQuery(_ fieldsAppClipAdvancedExperienceImages: [FieldsAppClipAdvancedExperienceImages]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAppClipAdvancedExperienceImages, forKey: "fields[appClipAdvancedExperienceImages]", explode: false)
            return encoder.items
        }

        public enum FieldsAppClipAdvancedExperienceImages: String, Codable, CaseIterable {
            case assetDeliveryState
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public func patch(_ body: API.AppClipAdvancedExperienceImageUpdateRequest) -> Request<API.AppClipAdvancedExperienceImageResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appClipAdvancedExperienceImages-update_instance")
        }
    }
}