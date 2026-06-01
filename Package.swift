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
        .package(url: "https://github.com/rongcloud/RongCloudIM-iOS.git", exact: "5.38.0")
    ],
    targets: [
        .binaryTarget(
            name: "NexconnChatSDK",
            url: "https://downloads.nexconn.ai/release/chat/ios/26.2.4/NexconnChatSDK_26.2.4.zip",
            checksum: "be1b7446640640a6c9b3abffccdeff54b572844762b7a10c192efac56d23c44d"
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
