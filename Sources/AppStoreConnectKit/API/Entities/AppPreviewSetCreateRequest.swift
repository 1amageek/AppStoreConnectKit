// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct AppPreviewSetCreateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships?

        public enum `Type`: String, Codable, CaseIterable {
            case appPreviewSets
        }

        public struct Attributes: Codable {
            public var previewType: PreviewType

            public init(previewType: PreviewType) {
                self.previewType = previewType
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.previewType = try values.decode(PreviewType.self, forKey: "previewType")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(previewType, forKey: "previewType")
            }
        }

        public struct Relationships: Codable {
            public var appStoreVersionLocalization: AppStoreVersionLocalization?
            public var appCustomProductPageLocalization: AppCustomProductPageLocalization?
            public var appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization?

            public struct AppStoreVersionLocalization: Codable {
                public var data: Data?

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersionLocalizations
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }

                    public init(from decoder: Decoder) throws {
                        let values = try decoder.container(keyedBy: StringCodingKey.self)
                        self.type = try values.decode(`Type`.self, forKey: "type")
                        self.id = try values.decode(String.self, forKey: "id")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var values = encoder.container(keyedBy: StringCodingKey.self)
                        try values.encode(type, forKey: "type")
                        try values.encode(id, forKey: "id")
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decodeIfPresent(Data.self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(data, forKey: "data")
                }
            }

            public struct AppCustomProductPageLocalization: Codable {
                public var data: Data?

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appCustomProductPageLocalizations
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }

                    public init(from decoder: Decoder) throws {
                        let values = try decoder.container(keyedBy: StringCodingKey.self)
                        self.type = try values.decode(`Type`.self, forKey: "type")
                        self.id = try values.decode(String.self, forKey: "id")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var values = encoder.container(keyedBy: StringCodingKey.self)
                        try values.encode(type, forKey: "type")
                        try values.encode(id, forKey: "id")
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decodeIfPresent(Data.self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(data, forKey: "data")
                }
            }

            public struct AppStoreVersionExperimentTreatmentLocalization: Codable {
                public var data: Data?

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case appStoreVersionExperimentTreatmentLocalizations
                    }

                    public init(type: `Type`, id: String) {
                        self.type = type
                        self.id = id
                    }

                    public init(from decoder: Decoder) throws {
                        let values = try decoder.container(keyedBy: StringCodingKey.self)
                        self.type = try values.decode(`Type`.self, forKey: "type")
                        self.id = try values.decode(String.self, forKey: "id")
                    }

                    public func encode(to encoder: Encoder) throws {
                        var values = encoder.container(keyedBy: StringCodingKey.self)
                        try values.encode(type, forKey: "type")
                        try values.encode(id, forKey: "id")
                    }
                }

                public init(data: Data? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decodeIfPresent(Data.self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(data, forKey: "data")
                }
            }

            public init(appStoreVersionLocalization: AppStoreVersionLocalization? = nil, appCustomProductPageLocalization: AppCustomProductPageLocalization? = nil, appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization? = nil) {
                self.appStoreVersionLocalization = appStoreVersionLocalization
                self.appCustomProductPageLocalization = appCustomProductPageLocalization
                self.appStoreVersionExperimentTreatmentLocalization = appStoreVersionExperimentTreatmentLocalization
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.appStoreVersionLocalization = try values.decodeIfPresent(AppStoreVersionLocalization.self, forKey: "appStoreVersionLocalization")
                self.appCustomProductPageLocalization = try values.decodeIfPresent(AppCustomProductPageLocalization.self, forKey: "appCustomProductPageLocalization")
                self.appStoreVersionExperimentTreatmentLocalization = try values.decodeIfPresent(AppStoreVersionExperimentTreatmentLocalization.self, forKey: "appStoreVersionExperimentTreatmentLocalization")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(appStoreVersionLocalization, forKey: "appStoreVersionLocalization")
                try values.encodeIfPresent(appCustomProductPageLocalization, forKey: "appCustomProductPageLocalization")
                try values.encodeIfPresent(appStoreVersionExperimentTreatmentLocalization, forKey: "appStoreVersionExperimentTreatmentLocalization")
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships? = nil) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.type = try values.decode(`Type`.self, forKey: "type")
            self.attributes = try values.decode(Attributes.self, forKey: "attributes")
            self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(type, forKey: "type")
            try values.encode(attributes, forKey: "attributes")
            try values.encodeIfPresent(relationships, forKey: "relationships")
        }
    }

    public init(data: Data) {
        self.data = data
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(Data.self, forKey: "data")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(data, forKey: "data")
    }
}
