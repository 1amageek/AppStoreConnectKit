// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct AppPreviewUpdateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var id: String
        public var attributes: Attributes?

        public enum `Type`: String, Codable, CaseIterable {
            case appPreviews
        }

        public struct Attributes: Codable {
            public var sourceFileChecksum: String?
            public var previewFrameTimeCode: String?
            public var isUploaded: Bool?

            public init(sourceFileChecksum: String? = nil, previewFrameTimeCode: String? = nil, isUploaded: Bool? = nil) {
                self.sourceFileChecksum = sourceFileChecksum
                self.previewFrameTimeCode = previewFrameTimeCode
                self.isUploaded = isUploaded
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.sourceFileChecksum = try values.decodeIfPresent(String.self, forKey: "sourceFileChecksum")
                self.previewFrameTimeCode = try values.decodeIfPresent(String.self, forKey: "previewFrameTimeCode")
                self.isUploaded = try values.decodeIfPresent(Bool.self, forKey: "uploaded")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(sourceFileChecksum, forKey: "sourceFileChecksum")
                try values.encodeIfPresent(previewFrameTimeCode, forKey: "previewFrameTimeCode")
                try values.encodeIfPresent(isUploaded, forKey: "uploaded")
            }
        }

        public init(type: `Type`, id: String, attributes: Attributes? = nil) {
            self.type = type
            self.id = id
            self.attributes = attributes
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.type = try values.decode(`Type`.self, forKey: "type")
            self.id = try values.decode(String.self, forKey: "id")
            self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(type, forKey: "type")
            try values.encode(id, forKey: "id")
            try values.encodeIfPresent(attributes, forKey: "attributes")
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
