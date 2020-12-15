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
    .library(
      name: "LibSSH",
      targets: ["LibSSH"]
    ),
    .library(
      name: "BlinkFiles",
      targets: ["BlinkFiles"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "SSH",
      path: "SSH.xcframework"
    ),
    .binaryTarget(
        name: "LibSSH",
        path: "libssh.xcframework"
    ),
    .binaryTarget(
      name: "BlinkFiles",
      path: "BlinkFiles.xcframework"
    )
  ]
)
