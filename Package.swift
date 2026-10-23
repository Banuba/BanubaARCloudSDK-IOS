// swift-tools-version:5.9

import PackageDescription

let banubaUtilsVersionRange: Range<Version> = "0.54.5-beta.5"..<"1.59.99"

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
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaARCloudSDK/0.54.5-beta.5/BanubaARCloudSDK-0.54.5-beta.5.xcframework.zip",
      checksum: "b009c2ebddb89e38c7df1523d791959b3a0adeae57b5d1f7bccb0da11df87e00"
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
