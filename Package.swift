// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "SSH",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    .library(
      name: "SSH",
      targets: ["SSH"]),
  ],
  dependencies: [
    .package(path: "/Users/carlos/libssh-framework")
  ],
  targets: [
    .binaryTarget(
      name: "SSH",
      dependencies: ["LibSSH"],
      path: "SSH.xcframework"
    )
  ]
)
