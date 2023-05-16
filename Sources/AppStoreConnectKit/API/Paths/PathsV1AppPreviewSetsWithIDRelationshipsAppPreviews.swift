// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.AppPreviewSets.WithID.Relationships {
    public var appPreviews: AppPreviews {
        AppPreviews(path: path + "/appPreviews")
    }

    public struct AppPreviews {
        /// Path: `/v1/appPreviewSets/{id}/relationships/appPreviews`
        public let path: String

        public func get(limit: Int? = nil) -> Request<AppPreviewSetAppPreviewsLinkagesResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "appPreviewSets-appPreviews-get_to_many_relationship")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }

        public func patch(_ body: AppPreviewSetAppPreviewsLinkagesRequest) -> Request<Void> {
            Request(path: path, method: "PATCH", body: body, id: "appPreviewSets-appPreviews-replace_to_many_relationship")
        }
    }
}