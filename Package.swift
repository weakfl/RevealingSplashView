// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RevealingSplashView",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "RevealingSplashView",
            targets: ["RevealingSplashView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "Quick",
            url: "https://github.com/Quick/Quick",
            from: "3.0.0"
        ),
        .package(
            name: "Nimble",
            url: "https://github.com/Quick/Nimble",
            from: "8.1.1"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "RevealingSplashView",
            dependencies: [],
            path: "RevealingSplashView"),
        .testTarget(
            name: "RevealingSplashViewTests",
            dependencies: ["RevealingSplashView", "Quick", "Nimble"],
            path: "RevealingSplashViewTests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
