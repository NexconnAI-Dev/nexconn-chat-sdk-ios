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
    targets: [
        .binaryTarget(
            name: "NexconnChatSDK",
            url: "https://downloads.nexconn.ai/release/chat/ios/0.100.2/NexconnChatSDK_0.100.2.zip",
            checksum: "5500257e08e29884fe242379d5daea3fffe9c4b906d29fb4385f6bdc5b5d8cb0"
        ),
        .target(
            name: "NexconnChatSDKWrapper",
            dependencies: [
                .target(name: "NexconnChatSDK")
            ],
            path: "Sources/NexconnChatSDKWrapper"
        )
    ]
)
