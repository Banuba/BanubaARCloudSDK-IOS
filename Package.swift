// swift-tools-version:5.9

import PackageDescription

let banubaUtilsVersion: Version = "1.55.1"

let package = Package(
  name: "BanubaARCloudSDK",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaARCloudSDK",
      targets: ["BanubaARCloudSDKTarget"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", exact: banubaUtilsVersion),
  ],
  targets: [
    .binaryTarget(
      name: "BanubaARCloudSDK",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaARCloudSDK/1.55.1/BanubaARCloudSDK-1.55.1.xcframework.zip",
      checksum: "1af6bdfef89f9a4f990cb6bfca14aa077c01cb8a8fe6d74570e3a7512bae6e76"
    ),
    .target(
      name: "BanubaARCloudSDKTarget",
      dependencies: [
        .target(name: "BanubaARCloudSDKWrapper")
      ],
      path: "BanubaARCloudSDKTarget"
    ),
    .target(
      name: "BanubaARCloudSDKWrapper",
      dependencies: [
        "BanubaARCloudSDK",
        .product(name: "BanubaUtilities", package: "BanubaUtilities-iOS")
      ],
      path: "BanubaARCloudSDKWrapper"
    )
  ]
)
