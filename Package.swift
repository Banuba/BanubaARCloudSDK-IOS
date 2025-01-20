// swift-tools-version:5.9

import PackageDescription

let utilsVersionRange: Range<Version> = "1.40.0"..<"1.49.99"

let package = Package(
  name: "BanubaARCloudSDK",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaARCloudSDK",
      targets: ["BanubaARCloudSDK"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", utilsVersionRange),
  ],
  targets: [
    .binaryTarget(
      name: "BanubaARCloudSDK",
      path: "BanubaARCloudSDK.xcframework"
    )
  ]
)
