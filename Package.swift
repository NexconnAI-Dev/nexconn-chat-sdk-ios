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
            url: "https://downloads.nexconn.ai/release/chat/ios/26.4.2/NexconnChatSDK_26.4.2.zip",
            checksum: "f103a12fe528f3cb3edb73ff1313baf58286a42ebe918d11860c64a5dde268a5"
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
