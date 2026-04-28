// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirstLibrary",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FirstLibrary",
            targets: ["FirstLibrary"]),
    ],
	dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.10.0")
	],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FirstLibrary"),
        .testTarget(
            name: "FirstLibraryTests",
            dependencies: ["FirstLibrary"]
        ),
    ]
)
