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
            url: "https://downloads.nexconn.ai/release/chat/ios/26.1.1/NexconnChatSDK_26.1.1.zip",
            checksum: "e1b980ec09aad901ad56a2da2b85a70868645cad68831e34477d87f3fb5dde43"
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
