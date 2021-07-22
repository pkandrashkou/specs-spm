// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FaceSDK",
    products: [
        .library(name: "FaceSDK", targets: ["FaceSDK", "RegulaCommon"])
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/RegulaCommon/face-sdk/0.0.1.zip",
            checksum: "0cf35bc5626b81964269d4e8ffa9954fffdb87900883e686bab73f0dc83fc841"
        ),
        .binaryTarget(
            name: "RegulaCommon",
            url: "https://pods.regulaforensics.com/RegulaCommon/regula-common/0.0.1.zip",
            checksum: "2bbadce710ede2a4c5fc58991122b399ec18703aae9b59d00ae6a502aa7952fd"
        ),
        // .target(
        //     name: "FaceSDK-Target",
        //      dependencies: [
        //             .target(name: "FaceSDK", condition: .when(platforms: .some([.iOS]))),
        //             .target(name: "RegulaCommon", condition: .when(platforms: .some([.iOS])))
        //     ],
        //     path: "FaceSDK-Target"
        // )
    ]
)