// swift-tools-version:5.9.2

import PackageDescription

let package = Package(
    name: "CryptoUtils9",
    defaultLocalization: "en",
    platforms: [.iOS(.v15), .macOS(.v10_15)],
    products: [
        .library(name: "CryptoUtils9", targets: ["CryptoUtils9"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-crypto", branch: "main"),
    ],
    targets: [
        .target(name: "CryptoUtils9",
                dependencies: [
                    .product(name: "Crypto", package: "swift-crypto"),
                ],
                path: "Sources")
    ]
)
