// swift-tools-version:5.9

import PackageDescription

let banubaUtilsVersionRange: Range<Version> = "1.54.5"..<"1.59.99"

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
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", banubaUtilsVersionRange),
  ],
  targets: [
    .binaryTarget(
      name: "BanubaARCloudSDK",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaARCloudSDK/1.54.5/BanubaARCloudSDK-1.54.5.xcframework.zip",
      checksum: "4e07c5a95811f18a3329317fbe992c723c7c287baa14bccdfda2b04494886e3e"
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
