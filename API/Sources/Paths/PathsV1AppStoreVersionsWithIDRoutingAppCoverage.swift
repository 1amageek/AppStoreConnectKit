// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V1.AppStoreVersions.WithID {
    public var routingAppCoverage: RoutingAppCoverage {
        RoutingAppCoverage(path: path + "/routingAppCoverage")
    }

    public struct RoutingAppCoverage {
        /// Path: `/v1/appStoreVersions/{id}/routingAppCoverage`
        public let path: String

        public func get(fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]? = nil) -> Request<API.RoutingAppCoverageResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(fieldsRoutingAppCoverages), id: "appStoreVersions-routingAppCoverage-get_to_one_related")
        }

        private func makeGetQuery(_ fieldsRoutingAppCoverages: [FieldsRoutingAppCoverages]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(fieldsRoutingAppCoverages, forKey: "fields[routingAppCoverages]", explode: false)
            return encoder.items
        }

        public enum FieldsRoutingAppCoverages: String, Codable, CaseIterable {
            case appStoreVersion
            case assetDeliveryState
            case fileName
            case fileSize
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }
    }
}
