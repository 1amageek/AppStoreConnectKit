// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.V2.SandboxTesters {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v2/sandboxTesters/{id}`
        public let path: String

        public func patch(_ body: API.SandboxTesterV2UpdateRequest) -> Request<API.SandboxTesterV2Response> {
            Request(path: path, method: "PATCH", body: body, id: "sandboxTesters-update_instance")
        }
    }
}
