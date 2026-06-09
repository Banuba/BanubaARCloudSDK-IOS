// swift-tools-version:5.9

import PackageDescription

let banubaUtilsVersionRange: Range<Version> = "1.53.0-beta.0"..<"1.53.99"

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
    // Local development uses the path-based binaryTarget below.
    // Release flow (fastlane patch_package_swift_for_nexus) replaces it in the GitHub distribution repo with:
    // .binaryTarget(
    //   name: "BanubaARCloudSDK",
    //   url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaARCloudSDK/{version}/BanubaARCloudSDK-{version}.xcframework.zip",
    //   checksum: "{computed at release}"
    // )
    .binaryTarget(
      name: "BanubaARCloudSDK",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaARCloudSDK/1.53.0-beta.2/BanubaARCloudSDK-1.53.0-beta.2.xcframework.zip",
      checksum: "74d50128c9cd645077f8f819a14d2386b729065521226bc03cb4c457cd0b724e"
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
