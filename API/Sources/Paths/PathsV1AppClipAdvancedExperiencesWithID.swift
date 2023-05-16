// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppClipAdvancedExperiences {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/appClipAdvancedExperiences/{id}`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<API.AppClipAdvancedExperienceResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClipAdvancedExperiences-get_instance")
        }

        public struct GetParameters {
            public var fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences]?
            public var include: [Include]?
            public var limitLocalizations: Int?

            public enum FieldsAppClipAdvancedExperiences: String, Codable, CaseIterable {
                case action
                case appClip
                case businessCategory
                case defaultLanguage
                case headerImage
                case isPoweredBy
                case link
                case localizations
                case place
                case placeStatus
                case removed
                case status
                case version
            }

            public enum Include: String, Codable, CaseIterable {
                case appClip
                case headerImage
                case localizations
            }

            public init(fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences]? = nil, include: [Include]? = nil, limitLocalizations: Int? = nil) {
                self.fieldsAppClipAdvancedExperiences = fieldsAppClipAdvancedExperiences
                self.include = include
                self.limitLocalizations = limitLocalizations
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsAppClipAdvancedExperiences, forKey: "fields[appClipAdvancedExperiences]")
                encoder.encode(include, forKey: "include")
                encoder.encode(limitLocalizations, forKey: "limit[localizations]")
                return encoder.items
            }
        }

        public func patch(_ body: API.AppClipAdvancedExperienceUpdateRequest) -> Request<API.AppClipAdvancedExperienceResponse> {
            Request(path: path, method: "PATCH", body: body, id: "appClipAdvancedExperiences-update_instance")
        }
    }
}
