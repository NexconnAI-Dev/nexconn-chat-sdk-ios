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
            url: "https://downloads.nexconn.ai/release/chat/ios/26.4.0/NexconnChatSDK_26.4.0.zip",
            checksum: "89354ac8ea3071961aaee935461033edd6e4e6cc4d966d50723aaf7424412850"
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
