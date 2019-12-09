// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Nifty",
    products: [
        .library(
            name: "Nifty",
            targets: ["Nifty"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/sbooker/Nifty-libs.git", from: "1.1.0"),
    ],
    targets: [
        .target(
            name: "Nifty",
            dependencies: [
                "Nifty-libs"
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "NiftyTests",
            dependencies: ["Nifty"]),
    ]

)