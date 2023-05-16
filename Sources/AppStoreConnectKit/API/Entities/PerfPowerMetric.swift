// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct PerfPowerMetric: Codable {
    public var type: `Type`
    public var id: String
    public var attributes: Attributes?
    public var links: ResourceLinks

    public enum `Type`: String, Codable, CaseIterable {
        case perfPowerMetrics
    }

    public struct Attributes: Codable {
        public var platform: Platform?
        public var metricType: MetricType?
        public var deviceType: String?

        public enum Platform: String, Codable, CaseIterable {
            case ios = "IOS"
        }

        public enum MetricType: String, Codable, CaseIterable {
            case disk = "DISK"
            case hang = "HANG"
            case battery = "BATTERY"
            case launch = "LAUNCH"
            case memory = "MEMORY"
            case animation = "ANIMATION"
            case termination = "TERMINATION"
        }

        public init(platform: Platform? = nil, metricType: MetricType? = nil, deviceType: String? = nil) {
            self.platform = platform
            self.metricType = metricType
            self.deviceType = deviceType
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.platform = try values.decodeIfPresent(Platform.self, forKey: "platform")
            self.metricType = try values.decodeIfPresent(MetricType.self, forKey: "metricType")
            self.deviceType = try values.decodeIfPresent(String.self, forKey: "deviceType")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(platform, forKey: "platform")
            try values.encodeIfPresent(metricType, forKey: "metricType")
            try values.encodeIfPresent(deviceType, forKey: "deviceType")
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
