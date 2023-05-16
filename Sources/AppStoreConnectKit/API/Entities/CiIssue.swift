// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct CiIssue: Codable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case ciIssues
    }

    public struct Attributes: Codable {
        public var issueType: IssueType?
        public var message: String?
        public var fileSource: FileLocation?
        public var category: String?

        public enum IssueType: String, Codable, CaseIterable {
            case analyzerWarning = "ANALYZER_WARNING"
            case error = "ERROR"
            case testFailure = "TEST_FAILURE"
            case warning = "WARNING"
        }

        public init(issueType: IssueType? = nil, message: String? = nil, fileSource: FileLocation? = nil, category: String? = nil) {
            self.issueType = issueType
            self.message = message
            self.fileSource = fileSource
            self.category = category
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.issueType = try values.decodeIfPresent(IssueType.self, forKey: "issueType")
            self.message = try values.decodeIfPresent(String.self, forKey: "message")
            self.fileSource = try values.decodeIfPresent(FileLocation.self, forKey: "fileSource")
            self.category = try values.decodeIfPresent(String.self, forKey: "category")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(issueType, forKey: "issueType")
            try values.encodeIfPresent(message, forKey: "message")
            try values.encodeIfPresent(fileSource, forKey: "fileSource")
            try values.encodeIfPresent(category, forKey: "category")
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