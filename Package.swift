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
      name: "SSHBin",
      path: "SSH.xcframework"
    ),
    .binaryTarget(
        name: "LibSSH",
        path: "libssh.xcframework"
    ),
    .target(name: "SSH",
            dependencies: [
                .target(name: "SSHBin"),
                .target(name: "LibSSH")
            ],
            path: "SSHTargets")
  ]
)
