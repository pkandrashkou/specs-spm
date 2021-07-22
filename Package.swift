// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FaceSDK",
    products: [
        .library(name: "FaceSDK", targets: ["FaceSDKTarget"])
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/pkondrashkov/common", .branch("master")),
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/RegulaCommon/face-sdk/FaceSDK.xcframework.zip",
            checksum: "9e302183b37b56f00bca52c843f2dce072d76deae8b90cae776261cf75d7f2fa"
        ),
        .target(
            name: "FaceSDKTarget",
             dependencies: [
                    .target(name: "FaceSDK", condition: .when(platforms: .some([.iOS]))),
                    .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources"
        )
    ]
)