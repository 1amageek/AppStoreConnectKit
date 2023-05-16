// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension Paths.V1.DiagnosticSignatures.WithID {
    public var logs: Logs {
        Logs(path: path + "/logs")
    }

    public struct Logs {
        /// Path: `/v1/diagnosticSignatures/{id}/logs`
        public let path: String

        public func get(limit: Int? = nil) -> Request<Data> {
            Request(path: path, method: "GET", query: makeGetQuery(limit), id: "diagnosticSignatures-logs-get_to_many_related")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(limit, forKey: "limit")
            return encoder.items
        }
    }
}
