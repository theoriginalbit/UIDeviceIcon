// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "UIDeviceIcon",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(name: "UIDeviceIcon", targets: [
            "UIDeviceIcon",
        ]),
    ],
    dependencies: [
        .package(url: "https://github.com/theoriginalbit/UIDeviceModel.git", .upToNextMajor(from: "3.0.0")),
    ],
    targets: [
        .target(name: "UIDeviceIcon", dependencies: [
            "UIDeviceModel",
        ]),
    ]
)
