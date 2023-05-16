// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct BetaGroupCreateRequest: Codable {
    public var data: Data

    public struct Data: Codable {
        public var type: `Type`
        public var attributes: Attributes
        public var relationships: Relationships

        public enum `Type`: String, Codable, CaseIterable {
            case betaGroups
        }

        public struct Attributes: Codable {
            public var name: String
            public var isInternalGroup: Bool?
            public var hasAccessToAllBuilds: Bool?
            public var isPublicLinkEnabled: Bool?
            public var isPublicLinkLimitEnabled: Bool?
            public var publicLinkLimit: Int?
            public var isFeedbackEnabled: Bool?

            public init(name: String, isInternalGroup: Bool? = nil, hasAccessToAllBuilds: Bool? = nil, isPublicLinkEnabled: Bool? = nil, isPublicLinkLimitEnabled: Bool? = nil, publicLinkLimit: Int? = nil, isFeedbackEnabled: Bool? = nil) {
                self.name = name
                self.isInternalGroup = isInternalGroup
                self.hasAccessToAllBuilds = hasAccessToAllBuilds
                self.isPublicLinkEnabled = isPublicLinkEnabled
                self.isPublicLinkLimitEnabled = isPublicLinkLimitEnabled
                self.publicLinkLimit = publicLinkLimit
                self.isFeedbackEnabled = isFeedbackEnabled
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.name = try values.decode(String.self, forKey: "name")
                self.isInternalGroup = try values.decodeIfPresent(Bool.self, forKey: "isInternalGroup")
                self.hasAccessToAllBuilds = try values.decodeIfPresent(Bool.self, forKey: "hasAccessToAllBuilds")
                self.isPublicLinkEnabled = try values.decodeIfPresent(Bool.self, forKey: "publicLinkEnabled")
                self.isPublicLinkLimitEnabled = try values.decodeIfPresent(Bool.self, forKey: "publicLinkLimitEnabled")
                self.publicLinkLimit = try values.decodeIfPresent(Int.self, forKey: "publicLinkLimit")
                self.isFeedbackEnabled = try values.decodeIfPresent(Bool.self, forKey: "feedbackEnabled")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(name, forKey: "name")
                try values.encodeIfPresent(isInternalGroup, forKey: "isInternalGroup")
                try values.encodeIfPresent(hasAccessToAllBuilds, forKey: "hasAccessToAllBuilds")
                try values.encodeIfPresent(isPublicLinkEnabled, forKey: "publicLinkEnabled")
                try values.encodeIfPresent(isPublicLinkLimitEnabled, forKey: "publicLinkLimitEnabled")
                try values.encodeIfPresent(publicLinkLimit, forKey: "publicLinkLimit")
                try values.encodeIfPresent(isFeedbackEnabled, forKey: "feedbackEnabled")
            }
        }

        public struct Relationships: Codable {
            public var app: App
            public var builds: Builds?
            public var betaTesters: BetaTesters?

            public struct App: Codable {
                public var data: Data

                public struct Data: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case apps
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

            public struct Builds: Codable {
                public var data: [Datum]?

                public struct Datum: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case builds
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

                public init(data: [Datum]? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(data, forKey: "data")
                }
            }

            public struct BetaTesters: Codable {
                public var data: [Datum]?

                public struct Datum: Codable {
                    public var type: `Type`
                    public var id: String

                    public enum `Type`: String, Codable, CaseIterable {
                        case betaTesters
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

                public init(data: [Datum]? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(data, forKey: "data")
                }
            }

            public init(app: App, builds: Builds? = nil, betaTesters: BetaTesters? = nil) {
                self.app = app
                self.builds = builds
                self.betaTesters = betaTesters
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.app = try values.decode(App.self, forKey: "app")
                self.builds = try values.decodeIfPresent(Builds.self, forKey: "builds")
                self.betaTesters = try values.decodeIfPresent(BetaTesters.self, forKey: "betaTesters")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(app, forKey: "app")
                try values.encodeIfPresent(builds, forKey: "builds")
                try values.encodeIfPresent(betaTesters, forKey: "betaTesters")
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
