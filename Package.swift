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
            url: "https://downloads.nexconn.ai/release/chat/ios/0.100.8/NexconnChatSDK_0.100.8.zip",
            checksum: "97c93854b9ba56d89e78c4b2c5567d40f56f09ac590d3a6d30ed7c7770dfd566"
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
