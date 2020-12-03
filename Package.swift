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
  targets: [
    .binaryTarget(
      name: "SSH",
      path: "SSH.xcframework"
    )
  ]
)
