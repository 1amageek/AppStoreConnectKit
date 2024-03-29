// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var appStoreVersionExperimentTreatments: AppStoreVersionExperimentTreatments {
        AppStoreVersionExperimentTreatments(path: path + "/appStoreVersionExperimentTreatments")
    }

    public struct AppStoreVersionExperimentTreatments {
        /// Path: `/v1/appStoreVersionExperimentTreatments`
        public let path: String

        public func post(_ body: AppStoreVersionExperimentTreatmentCreateRequest) -> Request<AppStoreVersionExperimentTreatmentResponse> {
            Request(path: path, method: "POST", body: body, id: "appStoreVersionExperimentTreatments-create_instance")
        }
    }
}
