// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlaySDK",
    platforms: [.iOS(.v16), .macCatalyst(.v16),],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PlaySDK",
            targets: ["PlaySDKWrapper"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PlaySDKWrapper",
            dependencies: ["PlaySDKBinary"]
        ),
        .binaryTarget(
          name: "PlaySDKBinary",
          url: "https://github.com/CreateWithPlayApp/PlaySDK/releases/download/demo825/_PlaySDK.xcframework.zip",
          checksum: "edf9cbbe1b9044c4548c578811e78474567e573d06a0b3c03c0fba3e31b0bb37"
        )
    ]
)
