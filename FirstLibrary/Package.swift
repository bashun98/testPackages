// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirstLibrary",
	platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FirstLibrary",
			targets: ["FirstLibrary"]
		),
		.library(name: "SecondLibrary", targets: ["SecondLibrary"])
    ],
	dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.10.0"),
		.package(url: "https://github.com/onevcat/Kingfisher.git", from: "8.8.0")
	],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
			name: "FirstLibrary",
			dependencies: [
				.product(name: "Kingfisher", package: "Kingfisher")
			]
		),
		.target(
			name: "SecondLibrary",
			dependencies: [
				.product(name: "Alamofire", package: "Alamofire")
			]
		),
        .testTarget(
            name: "FirstLibraryTests",
            dependencies: ["FirstLibrary"]
        ),
    ]
)
