// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TextConverter",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "TextConverter",
            targets: ["TextConverterPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "TextConverterPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/TextConverterPlugin"),
        .testTarget(
            name: "TextConverterPluginTests",
            dependencies: ["TextConverterPlugin"],
            path: "ios/Tests/TextConverterPluginTests")
    ]
)