// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1 {
    public var profiles: Profiles {
        Profiles(path: path + "/profiles")
    }

    public struct Profiles {
        /// Path: `/v1/profiles`
        public let path: String

        public func get(parameters: GetParameters? = nil) -> Request<ProfilesResponse> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "profiles-get_collection")
        }

        public struct GetParameters {
            public var filterName: [String]?
            public var filterProfileState: [FilterProfileState]?
            public var filterProfileType: [FilterProfileType]?
            public var filterID: [String]?
            public var sort: [Sort]?
            public var fieldsProfiles: [FieldsProfiles]?
            public var limit: Int?
            public var include: [Include]?
            public var fieldsCertificates: [FieldsCertificates]?
            public var fieldsDevices: [FieldsDevices]?
            public var fieldsBundleIDs: [FieldsBundleIDs]?
            public var limitCertificates: Int?
            public var limitDevices: Int?

            public enum FilterProfileState: String, Codable, CaseIterable {
                case active = "ACTIVE"
                case invalid = "INVALID"
            }

            public enum FilterProfileType: String, Codable, CaseIterable {
                case iosAppDevelopment = "IOS_APP_DEVELOPMENT"
                case iosAppStore = "IOS_APP_STORE"
                case iosAppAdhoc = "IOS_APP_ADHOC"
                case iosAppInhouse = "IOS_APP_INHOUSE"
                case macAppDevelopment = "MAC_APP_DEVELOPMENT"
                case macAppStore = "MAC_APP_STORE"
                case macAppDirect = "MAC_APP_DIRECT"
                case tvosAppDevelopment = "TVOS_APP_DEVELOPMENT"
                case tvosAppStore = "TVOS_APP_STORE"
                case tvosAppAdhoc = "TVOS_APP_ADHOC"
                case tvosAppInhouse = "TVOS_APP_INHOUSE"
                case macCatalystAppDevelopment = "MAC_CATALYST_APP_DEVELOPMENT"
                case macCatalystAppStore = "MAC_CATALYST_APP_STORE"
                case macCatalystAppDirect = "MAC_CATALYST_APP_DIRECT"
            }

            public enum Sort: String, Codable, CaseIterable {
                case id
                case minusid = "-id"
                case name
                case minusname = "-name"
                case profileState
                case minusprofileState = "-profileState"
                case profileType
                case minusprofileType = "-profileType"
            }

            public enum FieldsProfiles: String, Codable, CaseIterable {
                case bundleID = "bundleId"
                case certificates
                case createdDate
                case devices
                case expirationDate
                case name
                case platform
                case profileContent
                case profileState
                case profileType
                case uuid
            }

            public enum Include: String, Codable, CaseIterable {
                case bundleID = "bundleId"
                case certificates
                case devices
            }

            public enum FieldsCertificates: String, Codable, CaseIterable {
                case certificateContent
                case certificateType
                case csrContent
                case displayName
                case expirationDate
                case name
                case platform
                case serialNumber
            }

            public enum FieldsDevices: String, Codable, CaseIterable {
                case addedDate
                case deviceClass
                case model
                case name
                case platform
                case status
                case udid
            }

            public enum FieldsBundleIDs: String, Codable, CaseIterable {
                case app
                case bundleIDCapabilities = "bundleIdCapabilities"
                case identifier
                case name
                case platform
                case profiles
                case seedID = "seedId"
            }

            public init(filterName: [String]? = nil, filterProfileState: [FilterProfileState]? = nil, filterProfileType: [FilterProfileType]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsProfiles: [FieldsProfiles]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsCertificates: [FieldsCertificates]? = nil, fieldsDevices: [FieldsDevices]? = nil, fieldsBundleIDs: [FieldsBundleIDs]? = nil, limitCertificates: Int? = nil, limitDevices: Int? = nil) {
                self.filterName = filterName
                self.filterProfileState = filterProfileState
                self.filterProfileType = filterProfileType
                self.filterID = filterID
                self.sort = sort
                self.fieldsProfiles = fieldsProfiles
                self.limit = limit
                self.include = include
                self.fieldsCertificates = fieldsCertificates
                self.fieldsDevices = fieldsDevices
                self.fieldsBundleIDs = fieldsBundleIDs
                self.limitCertificates = limitCertificates
                self.limitDevices = limitDevices
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder(explode: false)
                encoder.encode(filterName, forKey: "filter[name]")
                encoder.encode(filterProfileState, forKey: "filter[profileState]")
                encoder.encode(filterProfileType, forKey: "filter[profileType]")
                encoder.encode(filterID, forKey: "filter[id]")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(fieldsProfiles, forKey: "fields[profiles]")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(include, forKey: "include")
                encoder.encode(fieldsCertificates, forKey: "fields[certificates]")
                encoder.encode(fieldsDevices, forKey: "fields[devices]")
                encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]")
                encoder.encode(limitCertificates, forKey: "limit[certificates]")
                encoder.encode(limitDevices, forKey: "limit[devices]")
                return encoder.items
            }
        }

        public func post(_ body: ProfileCreateRequest) -> Request<ProfileResponse> {
            Request(path: path, method: "POST", body: body, id: "profiles-create_instance")
        }
    }
}
