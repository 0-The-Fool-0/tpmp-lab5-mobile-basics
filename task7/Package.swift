// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "task7",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "task7", targets: ["task7"])
    ],
    targets: [
        .executableTarget(
            name: "task7"
        )
    ]
)
