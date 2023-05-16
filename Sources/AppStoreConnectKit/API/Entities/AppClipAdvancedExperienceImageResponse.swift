// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation


public struct AppClipAdvancedExperienceImageResponse: Codable {
    /// AppClipAdvancedExperienceImage
    public var data: AppClipAdvancedExperienceImage
    public var links: DocumentLinks

    public init(data: AppClipAdvancedExperienceImage, links: DocumentLinks) {
        self.data = data
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.data = try values.decode(AppClipAdvancedExperienceImage.self, forKey: "data")
        self.links = try values.decode(DocumentLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(data, forKey: "data")
        try values.encode(links, forKey: "links")
    }
}
