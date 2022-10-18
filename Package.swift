// swift-tools-version:5.3
import PackageDescription
let package = Package(
  name: "BanubaARCloudSDK",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(
      name: "BanubaARCloudSDK",
      targets: ["BanubaARCloudSDK"])
  ],
  targets: [
    .binaryTarget(
      name: "BanubaARCloudSDK",
      path: "BanubaARCloudSDK.xcframework")
  ])
