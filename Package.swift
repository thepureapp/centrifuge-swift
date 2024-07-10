// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftCentrifuge",
    products: [
        .library(name: "SwiftCentrifuge", targets: ["SwiftCentrifuge"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf", .exact("1.26.0"))
    ],
    targets: [
        .target(
            name: "SwiftCentrifuge",
            dependencies: ["SwiftProtobuf"]
        ),
        .testTarget(
            name: "SwiftCentrifugeTests",
            dependencies: ["SwiftCentrifuge"]
        )
    ]
)
