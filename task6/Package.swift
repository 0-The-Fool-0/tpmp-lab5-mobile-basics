// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "task6",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "task6", targets: ["task6"]),
        .library(name: "DictionaryCore", targets: ["DictionaryCore"])
    ],
    targets: [
        .target(
            name: "DictionaryCore"
        ),
        .executableTarget(
            name: "task6",
            dependencies: ["DictionaryCore"]
        )
    ]
)
