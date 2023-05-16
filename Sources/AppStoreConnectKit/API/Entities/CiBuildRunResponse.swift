// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct CiBuildRunResponse: Codable {
    /// CiBuildRun
    public var data: CiBuildRun
    public var included: [IncludedItem]?
    public var links: DocumentLinks

    public enum IncludedItem: Codable {
        case build(Build)
        case ciWorkflow(CiWorkflow)
        case ciProduct(CiProduct)
        case scmGitReference(ScmGitReference)
        case scmPullRequest(ScmPullRequest)

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let value = try? container.decode(Build.self) {
                self = .build(value)
            } else if let value = try? container.decode(CiWorkflow.self) {
                self = .ciWorkflow(value)
            } else if let value = try? container.decode(CiProduct.self) {
                self = .ciProduct(value)
            } else if let value = try? container.decode(ScmGitReference.self) {
                self = .scmGitReference(value)
            } else if let value = try? container.decode(ScmPullRequest.self) {
                self = .scmPullRequest(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Data could not be decoded as any of the expected types (Build, CiWorkflow, CiProduct, ScmGitReference, ScmPullRequest)."
                )
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .build(let value): try container.encode(value)
            case .ciWorkflow(let value): try container.encode(value)
            case .ciProduct(let value): try container.encode(value)
            case .scmGitReference(let value): try container.encode(value)
            case .scmPullRequest(let value): try container.encode(value)
            }
        }
    }

    public init(data: CiBuildRun, included: [IncludedItem]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(CiBuildRun.self, forKey: "data")
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
