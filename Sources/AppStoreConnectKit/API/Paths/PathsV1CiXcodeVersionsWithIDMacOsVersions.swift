// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.CiXcodeVersions.WithID {
    public var macOsVersions: MacOsVersions {
        MacOsVersions(path: path + "/macOsVersions")
    }

    public struct MacOsVersions {
        /// Path: `/v1/ciXcodeVersions/{id}/macOsVersions`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<CiMacOsVersionsResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciXcodeVersions-macOsVersions-get_to_many_related")
        }

        public struct GetParameters {
            public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
            public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
            public var limit: Int?
            public var limitXcodeVersions: Int?
            public var include: [Include]?

            public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
                case macOsVersions
                case name
                case testDestinations
                case version
            }

            public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
                case name
                case version
                case xcodeVersions
            }

            public enum Include: String, Codable, CaseIterable {
                case xcodeVersions
            }

            public init(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limit: Int? = nil, limitXcodeVersions: Int? = nil, include: [Include]? = nil) {
                self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
                self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
                self.limit = limit
                self.limitXcodeVersions = limitXcodeVersions
                self.include = include
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
                encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(limitXcodeVersions, forKey: "limit[xcodeVersions]")
                encoder.encode(include, forKey: "include")
                return encoder.items
            }
        }
    }
}
