// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppStoreConnectKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppStoreConnectKit",
            targets: ["AppStoreConnectKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/jwt-kit.git", from: "4.0.0"),
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.51.1"),
        .package(url: "https://github.com/CreateAPI/URLQueryEncoder.git", from: "0.2.0"),
        .package(url: "https://github.com/swift-server/async-http-client.git", from: "1.17.0")
    ],
    targets: [
        .target(
            name: "AppStoreConnectKit",
            dependencies: [
                .product(name: "NIOFoundationCompat", package: "swift-nio"),
                .product(name: "NIOHTTP1", package: "swift-nio"),
                .product(name: "AsyncHTTPClient", package: "async-http-client"),
                .product(name: "URLQueryEncoder", package: "URLQueryEncoder"),
                .product(name: "JWTKit", package: "jwt-kit"),
            ]),
        .testTarget(
            name: "AppStoreConnectKitTests",
            dependencies: [
                "AppStoreConnectKit",
                .product(name: "JWTKit", package: "jwt-kit")
            ]),
    ]
)
