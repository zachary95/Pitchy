// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    
    name: "Pitchy",
    products: [
        .library(
            name: "Pitchy",
            targets: ["Pitchy"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "13.7.1"),
        .package(url: "https://github.com/Quick/Quick", from: "7.6.2"),
    ],
    targets: [
        .target(
            name: "Pitchy",
            dependencies: []
        ),
        .testTarget(
            name: "PitchyTests",
            dependencies: ["Pitchy", "Quick", "Nimble"]
        ),
    ]
)
