// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "vapor-hooks",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "VaporHooks", targets: ["VaporHooks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/binarybirds/hook-kit", from: "1.0.0"),
        .package(url: "https://github.com/vapor/vapor", from: "4.41.0"),
    ],
    targets: [
        .target(name: "VaporHooks", dependencies: [
            .product(name: "HookKit", package: "hook-kit"),
            .product(name: "Vapor", package: "vapor"),
        ]),
        .testTarget(name: "VaporHooksTests", dependencies: [
            .target(name: "VaporHooks"),
        ]),
    ]
)
