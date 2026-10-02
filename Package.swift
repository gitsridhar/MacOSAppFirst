// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MacOSAppFirst",
    platforms: [.macOS(.v13)],
    targets: [
        .target(name: "AppCore"),
        .executableTarget(
            name: "MacOSAppFirst",
            dependencies: ["AppCore"]
        ),
        .testTarget(
            name: "AppCoreTests",
            dependencies: ["AppCore"]
        ),
    ]
)
