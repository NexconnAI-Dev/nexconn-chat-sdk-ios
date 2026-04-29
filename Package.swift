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
        .package(url: "https://github.com/rongcloud/RongCloudIM-iOS.git", exact: "5.36.4")
    ],
    targets: [
        .binaryTarget(
            name: "NexconnChatSDK",
            url: "https://downloads.nexconn.ai/release/chat/ios/26.2.2/NexconnChatSDK_26.2.2.zip",
            checksum: "f5ea8edd16c82acf30bafe33d90d76b19eb67fcbaf52905fda01133e6bf388eb"
        ),
        .target(
            name: "NexconnChatSDKWrapper",
            dependencies: [
                .target(name: "NexconnChatSDK"),
                .product(name: "IMLibCore", package: "RongCloudIM-iOS"),
                .product(name: "ChatRoom", package: "RongCloudIM-iOS")
            ],
            path: "Sources/NexconnChatSDKWrapper"
        )
    ]
)
