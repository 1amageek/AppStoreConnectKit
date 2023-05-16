// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.AppInfos.WithID {
    public var secondarySubcategoryTwo: SecondarySubcategoryTwo {
        SecondarySubcategoryTwo(path: path + "/secondarySubcategoryTwo")
    }

    public struct SecondarySubcategoryTwo {
        /// Path: `/v1/appInfos/{id}/secondarySubcategoryTwo`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppCategoryResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "appInfos-secondarySubcategoryTwo-get_to_one_related")
        }

        public struct GetParameters {
            public var fieldsAppCategories: [FieldsAppCategories]?
            public var limitSubcategories: Int?
            public var include: [Include]?

            public enum FieldsAppCategories: String, Codable, CaseIterable {
                case parent
                case platforms
                case subcategories
            }

            public enum Include: String, Codable, CaseIterable {
                case parent
                case subcategories
            }

            public init(fieldsAppCategories: [FieldsAppCategories]? = nil, limitSubcategories: Int? = nil, include: [Include]? = nil) {
                self.fieldsAppCategories = fieldsAppCategories
                self.limitSubcategories = limitSubcategories
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
                encoder.encode(limitSubcategories, forKey: "limit[subcategories]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
