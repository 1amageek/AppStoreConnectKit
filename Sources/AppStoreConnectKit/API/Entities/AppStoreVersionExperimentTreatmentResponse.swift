// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct AppStoreVersionExperimentTreatmentResponse: Codable {
    /// AppStoreVersionExperimentTreatment
    public var data: AppStoreVersionExperimentTreatment
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable {
        case appStoreVersionExperiment(AppStoreVersionExperiment)
        case appStoreVersionExperimentTreatmentLocalization(AppStoreVersionExperimentTreatmentLocalization)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(AppStoreVersionExperiment.self) {
                self = .appStoreVersionExperiment(value)
            } else if let value = try? container.decode(AppStoreVersionExperimentTreatmentLocalization.self) {
                self = .appStoreVersionExperimentTreatmentLocalization(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (AppStoreVersionExperiment, AppStoreVersionExperimentTreatmentLocalization)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .appStoreVersionExperiment(let value): try container.encode(value)
            case .appStoreVersionExperimentTreatmentLocalization(let value): try container.encode(value)
            }
        }
    }

    public init(data: AppStoreVersionExperimentTreatment, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(AppStoreVersionExperimentTreatment.self, forKey: "data")
        self.included = try values.decodeIfPresent([IncludedItem].self, forKey: "included")
        self.links = try values.decode(DocumentLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(data, forKey: "data")
        try values.encodeIfPresent(included, forKey: "included")
        try values.encode(links, forKey: "links")
    }
}
