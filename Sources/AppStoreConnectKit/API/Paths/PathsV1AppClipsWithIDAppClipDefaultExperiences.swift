// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.AppClips.WithID {
    public var appClipDefaultExperiences: AppClipDefaultExperiences {
        AppClipDefaultExperiences(path: path + "/appClipDefaultExperiences")
    }

    public struct AppClipDefaultExperiences {
        /// Path: `/v1/appClips/{id}/appClipDefaultExperiences`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<AppClipDefaultExperiencesResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClips-appClipDefaultExperiences-get_to_many_related")
        }

        public struct GetParameters {
            public var isExistsReleaseWithAppStoreVersion: Bool?
            public var fieldsAppClips: [FieldsAppClips]?
            public var fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]?
            public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
            public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
            public var fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?
            public var limit: Int?
            public var limitAppClipDefaultExperienceLocalizations: Int?
            public var include: [Include]?

            public enum FieldsAppClips: String, Codable, CaseIterable {
                case app
                case appClipAdvancedExperiences
                case appClipDefaultExperiences
                case bundleID = "bundleId"
            }

            public enum FieldsAppClipAppStoreReviewDetails: String, Codable, CaseIterable {
                case appClipDefaultExperience
                case invocationURLs = "invocationUrls"
            }

            public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
                case ageRatingDeclaration
                case app
                case appClipDefaultExperience
                case appStoreReviewDetail
                case appStoreState
                case appStoreVersionExperiments
                case appStoreVersionLocalizations
                case appStoreVersionPhasedRelease
                case appStoreVersionSubmission
                case build
                case copyright
                case createdDate
                case customerReviews
                case downloadable
                case earliestReleaseDate
                case platform
                case releaseType
                case routingAppCoverage
                case versionString
            }

            public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
                case action
                case appClip
                case appClipAppStoreReviewDetail
                case appClipDefaultExperienceLocalizations
                case appClipDefaultExperienceTemplate
                case releaseWithAppStoreVersion
            }

            public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
                case appClipDefaultExperience
                case appClipHeaderImage
                case locale
                case subtitle
            }

            public enum Include: String, Codable, CaseIterable {
                case appClip
                case appClipAppStoreReviewDetail
                case appClipDefaultExperienceLocalizations
                case releaseWithAppStoreVersion
            }

            public init(isExistsReleaseWithAppStoreVersion: Bool? = nil, fieldsAppClips: [FieldsAppClips]? = nil, fieldsAppClipAppStoreReviewDetails: [FieldsAppClipAppStoreReviewDetails]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, limit: Int? = nil, limitAppClipDefaultExperienceLocalizations: Int? = nil, include: [Include]? = nil) {
                self.isExistsReleaseWithAppStoreVersion = isExistsReleaseWithAppStoreVersion
                self.fieldsAppClips = fieldsAppClips
                self.fieldsAppClipAppStoreReviewDetails = fieldsAppClipAppStoreReviewDetails
                self.fieldsAppStoreVersions = fieldsAppStoreVersions
                self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
                self.fieldsAppClipDefaultExperienceLocalizations = fieldsAppClipDefaultExperienceLocalizations
                self.limit = limit
                self.limitAppClipDefaultExperienceLocalizations = limitAppClipDefaultExperienceLocalizations
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(isExistsReleaseWithAppStoreVersion, forKey: "exists[releaseWithAppStoreVersion]")
                encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
                encoder.encode(fieldsAppClipAppStoreReviewDetails, forKey: "fields[appClipAppStoreReviewDetails]")
                encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
                encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
                encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(limitAppClipDefaultExperienceLocalizations, forKey: "limit[appClipDefaultExperienceLocalizations]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
