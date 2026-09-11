// swift-tools-version:5.9

import PackageDescription

let banubaUtilsVersionRange: Range<Version> = "1.54.1"..<"1.59.99"

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
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaARCloudSDK/1.54.2/BanubaARCloudSDK-1.54.2.xcframework.zip",
      checksum: "cf8178cb09a2224bdd59315819f5fbe9d1db4b2c3811aed0c00a23b91444c279"
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
