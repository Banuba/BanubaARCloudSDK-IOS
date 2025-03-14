// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "BanubaARCloudSDK",
  platforms: [
    .iOS(.v17)
  ],
  products: [
    .library(
      name: "BanubaARCloudSDK",
      targets: ["BanubaARCloudSDK"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "BanubaARCloudSDK",
      path: "BanubaARCloudSDK.xcframework"
    )
  ]
)
