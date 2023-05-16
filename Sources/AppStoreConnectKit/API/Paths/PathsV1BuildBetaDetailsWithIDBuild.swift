// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.BuildBetaDetails.WithID {
    public var build: Build {
        Build(path: path + "/build")
    }

    public struct Build {
        /// Path: `/v1/buildBetaDetails/{id}/build`
        public let path: String

        public func get(fieldsBuilds: [FieldsBuilds]? = nil) -> Request<BuildResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsBuilds), id: "buildBetaDetails-build-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsBuilds: [FieldsBuilds]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsBuilds, forKey: "fields[builds]", explode: false)
            return encoder.items
        }

        public enum FieldsBuilds: String, Codable, CaseIterable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildAudienceType
            case buildBetaDetail
            case buildBundles
            case computedMinMacOsVersion
            case diagnosticSignatures
            case expirationDate
            case expired
            case iconAssetToken
            case icons
            case individualTesters
            case lsMinimumSystemVersion
            case minOsVersion
            case perfPowerMetrics
            case preReleaseVersion
            case processingState
            case uploadedDate
            case usesNonExemptEncryption
            case version
        }
    }
}
