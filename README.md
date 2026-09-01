# Nexconn Chat iOS SPM Repository

This repository is used to distribute the `NexconnChat` binary SDK via Swift Package Manager.

<!-- Chat Growth Credit campaign banner -->
<p align="center">
  <a href="https://www.nexconn.ai/activity/chat-growth-credit?utm_source=github&utm_medium=readme&utm_campaign=chat-growth-credit&utm_repo=nexconn-chat-sdk-ios">
    <img src="./assets/chat-growth-credit-hero.jpg" alt="Build your app with 10,000 free MAU and full Chat Pro capabilities" width="100%" />
  </a>
</p>

> **Chat Growth Credit** — Build with Nexconn Chat and explore full capabilities free up to **10,000 MAU**. [View the offer details →](https://www.nexconn.ai/activity/chat-growth-credit?utm_source=github&utm_medium=readme&utm_campaign=chat-growth-credit&utm_repo=nexconn-chat-sdk-ios)


## Repository Structure

- `Package.swift`: SPM manifest, including binary URL, checksum, and dependency definitions
- `Sources/NexconnChatSDKWrapper`: lightweight wrapper target exposed as the public library product

## Integration

Add the following package URL in Xcode (Swift Package Dependencies):

`https://github.com/NexconnAI-Dev/nexconn-chat-sdk-ios`

Use the `main` branch or a specific release tag.

## Maintenance

`Package.swift` is typically updated automatically by the release script (SDK download URL, checksum, and version-related dependencies).

Common workflow:

1. Run the release script in the upstream repository to generate and commit the updated `Package.swift`
2. Create a version tag (for example, `v26.1.0`)
3. Push changes to this repository so downstream apps can consume it via SPM
