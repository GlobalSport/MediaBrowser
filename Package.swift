// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MediaBrowser",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_12)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MediaBrowser",
            targets: ["MediaBrowser"]),
    ],
    dependencies: [
        .package(name:"SDWebImage", url: "https://github.com/SDWebImage/SDWebImage",.exact(Version("5.12.2"))),
    .package(name:"UICircularProgressRing", url: "https://github.com/luispadron/UICircularProgressRing",.exact(Version("6.5.0"))),
             ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MediaBrowser",
            dependencies: ["SDWebImage", "UICircularProgressRing"],
            resources: [.copy("Sources/MediaBrowser/MediaBrowser.xcassets")]
        )
    ]
)
