// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MacUninstallerApp",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "MacUninstallerApp", targets: ["MacUninstallerApp"])
    ],
    targets: [
        .executableTarget(
            name: "MacUninstallerApp",
            path: "Sources",
            resources: []
        ),
        .testTarget(
            name: "MacUninstallerAppTests",
            dependencies: ["MacUninstallerApp"],
            path: "Tests"
        )
    ]
)
