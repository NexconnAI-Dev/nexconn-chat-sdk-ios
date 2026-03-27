# Nexconn Chat iOS SPM Repository

This repository is used to distribute the `NexconnChat` binary SDK via Swift Package Manager.

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
