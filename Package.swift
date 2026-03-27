// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "NexconnChat",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "NexconnChat",
            targets: ["NexconnChatSDKWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/rongcloud/RongCloudIM-iOS.git", exact: "5.36.1")
    ],
    targets: [
        .binaryTarget(
            name: "NexconnChatSDK",
            url: "https://downloads.rongcloud.cn/NexconnChatSDK_iOS_v26_1_0.zip",
            checksum: "062bb1441bbedf40ccf2fe388a377b22c30530a7efb02f329bb8d0f26d07dca8"
        ),
        .target(
            name: "NexconnChatSDKWrapper",
            dependencies: [
                .target(name: "NexconnChatSDK"),
                .product(name: "ChatRoom", package: "RongCloudIM-iOS")
            ],
            path: "Sources/NexconnChatSDKWrapper"
        )
    ]
)
