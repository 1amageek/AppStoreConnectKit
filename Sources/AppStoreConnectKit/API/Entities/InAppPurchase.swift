// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct InAppPurchase: Codable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var relationships: Relationships?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case inAppPurchases
    }

    public struct Attributes: Codable {
        public var referenceName: String?
        public var productID: String?
        public var inAppPurchaseType: InAppPurchaseType?
        public var state: State?

        public enum InAppPurchaseType: String, Codable, CaseIterable {
            case automaticallyRenewableSubscription = "AUTOMATICALLY_RENEWABLE_SUBSCRIPTION"
            case nonConsumable = "NON_CONSUMABLE"
            case consumable = "CONSUMABLE"
            case nonRenewingSubscription = "NON_RENEWING_SUBSCRIPTION"
            case freeSubscription = "FREE_SUBSCRIPTION"
        }

        public enum State: String, Codable, CaseIterable {
            case created = "CREATED"
            case developerSignedOff = "DEVELOPER_SIGNED_OFF"
            case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
            case deletionInProgress = "DELETION_IN_PROGRESS"
            case approved = "APPROVED"
            case deleted = "DELETED"
            case removedFromSale = "REMOVED_FROM_SALE"
            case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
            case waitingForUpload = "WAITING_FOR_UPLOAD"
            case processingContent = "PROCESSING_CONTENT"
            case replaced = "REPLACED"
            case rejected = "REJECTED"
            case waitingForScreenshot = "WAITING_FOR_SCREENSHOT"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case missingMetadata = "MISSING_METADATA"
            case readyToSubmit = "READY_TO_SUBMIT"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case pendingDeveloperRelease = "PENDING_DEVELOPER_RELEASE"
        }

        public init(referenceName: String? = nil, productID: String? = nil, inAppPurchaseType: InAppPurchaseType? = nil, state: State? = nil) {
            self.referenceName = referenceName
            self.productID = productID
            self.inAppPurchaseType = inAppPurchaseType
            self.state = state
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.referenceName = try values.decodeIfPresent(String.self, forKey: "referenceName")
            self.productID = try values.decodeIfPresent(String.self, forKey: "productId")
            self.inAppPurchaseType = try values.decodeIfPresent(InAppPurchaseType.self, forKey: "inAppPurchaseType")
            self.state = try values.decodeIfPresent(State.self, forKey: "state")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(referenceName, forKey: "referenceName")
            try values.encodeIfPresent(productID, forKey: "productId")
            try values.encodeIfPresent(inAppPurchaseType, forKey: "inAppPurchaseType")
            try values.encodeIfPresent(state, forKey: "state")
        }
    }

    public struct Relationships: Codable {
        public var apps: Apps?

        public struct Apps: Codable {
            public var links: Links?
            public var meta: PagingInformation?
            public var data: [Datum]?

            public struct Links: Codable {
                public var this: String?
                public var related: String?

                public init(this: String? = nil, related: String? = nil) {
                    self.this = this
                    self.related = related
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.this = try values.decodeIfPresent(String.self, forKey: "self")
                    self.related = try values.decodeIfPresent(String.self, forKey: "related")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encodeIfPresent(this, forKey: "self")
                    try values.encodeIfPresent(related, forKey: "related")
                }
            }

            public struct Datum: Codable {
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

            public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
                self.links = links
                self.meta = meta
                self.data = data
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.links = try values.decodeIfPresent(Links.self, forKey: "links")
                self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
                self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(links, forKey: "links")
                try values.encodeIfPresent(meta, forKey: "meta")
                try values.encodeIfPresent(data, forKey: "data")
            }
        }

        public init(apps: Apps? = nil) {
            self.apps = apps
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.apps = try values.decodeIfPresent(Apps.self, forKey: "apps")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(apps, forKey: "apps")
        }
    }

    public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.id = try values.decode(String.self, forKey: "id")
        self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
        self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
        self.links = try values.decode(ResourceLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(attributes, forKey: "attributes")
        try values.encodeIfPresent(relationships, forKey: "relationships")
        try values.encode(links, forKey: "links")
    }
}
