// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct CiWorkflowCreateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case ciWorkflows
        }

        public struct Attributes: Codable {
            public var name: String
            public var description: String
            public var branchStartCondition: CiBranchStartCondition?
            public var tagStartCondition: CiTagStartCondition?
            public var pullRequestStartCondition: CiPullRequestStartCondition?
            public var scheduledStartCondition: CiScheduledStartCondition?
            public var actions: [CiAction]
            public var isEnabled: Bool
            public var isLockedForEditing: Bool?
            public var isClean: Bool
            public var containerFilePath: String

            public init(name: String, description: String, branchStartCondition: CiBranchStartCondition? = nil, tagStartCondition: CiTagStartCondition? = nil, pullRequestStartCondition: CiPullRequestStartCondition? = nil, scheduledStartCondition: CiScheduledStartCondition? = nil, actions: [CiAction], isEnabled: Bool, isLockedForEditing: Bool? = nil, isClean: Bool, containerFilePath: String) {
                self.name = name
                self.description = description
                self.branchStartCondition = branchStartCondition
                self.tagStartCondition = tagStartCondition
                self.pullRequestStartCondition = pullRequestStartCondition
                self.scheduledStartCondition = scheduledStartCondition
                self.actions = actions
                self.isEnabled = isEnabled
                self.isLockedForEditing = isLockedForEditing
                self.isClean = isClean
                self.containerFilePath = containerFilePath
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.name = try values.decode(String.self, forKey: "name")
                self.description = try values.decode(String.self, forKey: "description")
                self.branchStartCondition = try values.decodeIfPresent(CiBranchStartCondition.self, forKey: "branchStartCondition")
                self.tagStartCondition = try values.decodeIfPresent(CiTagStartCondition.self, forKey: "tagStartCondition")
                self.pullRequestStartCondition = try values.decodeIfPresent(CiPullRequestStartCondition.self, forKey: "pullRequestStartCondition")
                self.scheduledStartCondition = try values.decodeIfPresent(CiScheduledStartCondition.self, forKey: "scheduledStartCondition")
                self.actions = try values.decode([CiAction].self, forKey: "actions")
                self.isEnabled = try values.decode(Bool.self, forKey: "isEnabled")
                self.isLockedForEditing = try values.decodeIfPresent(Bool.self, forKey: "isLockedForEditing")
                self.isClean = try values.decode(Bool.self, forKey: "clean")
                self.containerFilePath = try values.decode(String.self, forKey: "containerFilePath")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(name, forKey: "name")
                try values.encode(description, forKey: "description")
                try values.encodeIfPresent(branchStartCondition, forKey: "branchStartCondition")
                try values.encodeIfPresent(tagStartCondition, forKey: "tagStartCondition")
                try values.encodeIfPresent(pullRequestStartCondition, forKey: "pullRequestStartCondition")
                try values.encodeIfPresent(scheduledStartCondition, forKey: "scheduledStartCondition")
                try values.encode(actions, forKey: "actions")
                try values.encode(isEnabled, forKey: "isEnabled")
                try values.encodeIfPresent(isLockedForEditing, forKey: "isLockedForEditing")
                try values.encode(isClean, forKey: "clean")
                try values.encode(containerFilePath, forKey: "containerFilePath")
            }
        }

        public struct Relationships: Codable {
            public var product: Product
            public var repository: Repository
            public var xcodeVersion: XcodeVersion
            public var macOsVersion: MacOsVersion

            public struct Product: Codable {
                public var data: Data

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case ciProducts
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

            public struct Repository: Codable {
                public var data: Data

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case scmRepositories
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

            public struct XcodeVersion: Codable {
                public var data: Data

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case ciXcodeVersions
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

            public struct MacOsVersion: Codable {
                public var data: Data

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case ciMacOsVersions
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

            public init(product: Product, repository: Repository, xcodeVersion: XcodeVersion, macOsVersion: MacOsVersion) {
                self.product = product
                self.repository = repository
                self.xcodeVersion = xcodeVersion
                self.macOsVersion = macOsVersion
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.product = try values.decode(Product.self, forKey: "product")
                self.repository = try values.decode(Repository.self, forKey: "repository")
                self.xcodeVersion = try values.decode(XcodeVersion.self, forKey: "xcodeVersion")
                self.macOsVersion = try values.decode(MacOsVersion.self, forKey: "macOsVersion")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(product, forKey: "product")
                try values.encode(repository, forKey: "repository")
                try values.encode(xcodeVersion, forKey: "xcodeVersion")
                try values.encode(macOsVersion, forKey: "macOsVersion")
            }
        }

        public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.type = try values.decode(`Type`.self, forKey: "type")
            self.attributes = try values.decode(Attributes.self, forKey: "attributes")
            self.relationships = try values.decode(Relationships.self, forKey: "relationships")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(type, forKey: "type")
            try values.encode(attributes, forKey: "attributes")
            try values.encode(relationships, forKey: "relationships")
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
