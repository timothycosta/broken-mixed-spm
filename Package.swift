// swift-tools-version: 5.9

import PackageDescription

let package = Package(
	name: "Packages",
	
	products: [
		.library(name: "Models", targets: ["Models"]),
		.library(name: "UseObjc", targets: ["UseObjc"]),
		.library(name: "UseSwift", targets: ["UseSwift"]),
	],
	
	dependencies: [
	],
	
	targets: [
		.target(name: "Models"),
		.target(name: "UseObjc", dependencies: ["Models"], publicHeadersPath: "include"),
		.target(name: "UseSwift", dependencies: ["UseObjc", "Models"]),
	]
)
