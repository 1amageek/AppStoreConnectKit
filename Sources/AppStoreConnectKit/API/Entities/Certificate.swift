// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct Certificate: Codable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case certificates
    }

    public struct Attributes: Codable {
        public var name: String?
        public var certificateType: CertificateType?
        public var displayName: String?
        public var serialNumber: String?
        public var platform: BundleIDPlatform?
        public var expirationDate: Date?
        public var certificateContent: String?

        public init(name: String? = nil, certificateType: CertificateType? = nil, displayName: String? = nil, serialNumber: String? = nil, platform: BundleIDPlatform? = nil, expirationDate: Date? = nil, certificateContent: String? = nil) {
            self.name = name
            self.certificateType = certificateType
            self.displayName = displayName
            self.serialNumber = serialNumber
            self.platform = platform
            self.expirationDate = expirationDate
            self.certificateContent = certificateContent
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.name = try values.decodeIfPresent(String.self, forKey: "name")
            self.certificateType = try values.decodeIfPresent(CertificateType.self, forKey: "certificateType")
            self.displayName = try values.decodeIfPresent(String.self, forKey: "displayName")
            self.serialNumber = try values.decodeIfPresent(String.self, forKey: "serialNumber")
            self.platform = try values.decodeIfPresent(BundleIDPlatform.self, forKey: "platform")
            self.expirationDate = try values.decodeIfPresent(Date.self, forKey: "expirationDate")
            self.certificateContent = try values.decodeIfPresent(String.self, forKey: "certificateContent")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(name, forKey: "name")
            try values.encodeIfPresent(certificateType, forKey: "certificateType")
            try values.encodeIfPresent(displayName, forKey: "displayName")
            try values.encodeIfPresent(serialNumber, forKey: "serialNumber")
            try values.encodeIfPresent(platform, forKey: "platform")
            try values.encodeIfPresent(expirationDate, forKey: "expirationDate")
            try values.encodeIfPresent(certificateContent, forKey: "certificateContent")
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.id = try values.decode(String.self, forKey: "id")
        self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
        self.links = try values.decode(ResourceLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(attributes, forKey: "attributes")
        try values.encode(links, forKey: "links")
    }
}
