// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "NMapsMap",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "NMapsMap",
            targets: ["NMapsMapTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/navermaps/SPM-NMapsGeometry.git", from: "1.0.2")
    ],
    targets: [
        .target(
            name: "NMapsMapTarget",
            dependencies: [
                .target(name: "NMapsMapBinary"),
                .product(name: "NMapsGeometry", package: "SPM-NMapsGeometry")
            ],
            path: "Sources/NMapsMap"
        ),
        .binaryTarget(
            name: "NMapsMapBinary",
            url: "https://repository.map.naver.com/archive/pod/NMapsMap/3.22.1/NMapsMap.zip",
            checksum: "67036475bed6ad8a96b2dd9bef8b6f02ddc245fd0713e91aba007c0b2401b8a4"
        ),
    ]
)
