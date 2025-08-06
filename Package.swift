// swift-tools-version:5.9.2

import PackageDescription

let package = Package(
    name: "Utils9Crypto",
    defaultLocalization: "en",
    platforms: [.iOS(.v15), .macOS(.v10_15)],
    products: [
        .library(name: "Utils9Crypto", targets: ["Utils9Crypto"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-crypto", branch: "main"),
    ],
    targets: [
        .target(name: "Utils9Crypto",
                dependencies: [
                    .product(name: "Crypto", package: "swift-crypto"),
                ],
                path: "Sources")
    ]
)
