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
            url: "https://downloads.nexconn.ai/release/chat/ios/26.2.0/NexconnChatSDK_26.2.0.zip",
            checksum: "4dac9d92cf2c9db5856f3ca0143cdf160f0a483399b2b5aa97e465ebad06c940"
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
