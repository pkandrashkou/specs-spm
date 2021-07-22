// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FaceSDK",
    products: [
        // .library(name: "FaceSDK", targets: ["FaceSDK-Target"])
        .library(name: "FaceSDK", targets: ["FaceSDK", "RegulaCommon"])
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/RegulaCommon/face-sdk/FaceSDK.xcframework.zip",
            checksum: "9e302183b37b56f00bca52c843f2dce072d76deae8b90cae776261cf75d7f2fa"
        ),
        .binaryTarget(
            name: "RegulaCommon",
            url: "https://pods.regulaforensics.com/RegulaCommon/regula-common/RegulaCommon.xcframework.zip",
            checksum: "9ef592c40d960420c0dba3c49e97f2f3071baaff60a1e00b2b9d99f6cf6d656a"
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