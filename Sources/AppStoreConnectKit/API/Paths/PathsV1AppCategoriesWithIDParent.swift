// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.AppCategories.WithID {
    public var parent: Parent {
        Parent(path: path + "/parent")
    }

    public struct Parent {
        /// Path: `/v1/appCategories/{id}/parent`
        public let path: String

        public func get(fieldsAppCategories: [FieldsAppCategories]? = nil) -> Request<AppCategoryResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsAppCategories), id: "appCategories-parent-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsAppCategories: [FieldsAppCategories]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]", explode: false)
            return encoder.items
        }

        public enum FieldsAppCategories: String, Codable, CaseIterable {
            case parent
            case platforms
            case subcategories
        }
    }
}