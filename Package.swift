// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "RxFlow",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "RxFlow",
            targets: ["RxFlow"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git",
                 .upToNextMajor(from: "5.0.0")),
//        .package(url: "https://github.com/AliSoftware/Reusable.git",
//                 .upToNextMajor(from: "4.1.0"))
    ],
    targets: [
        .target(
            name: "RxFlow",
            dependencies: ["RxSwift", "RxCocoa"],
            path: "RxFlow"
        ),
//        .testTarget(
//            name: "RxFlowTests",
//            dependencies: ["RxFlow", "RxTest", "RxBlocking", "Reusable"],
//            path: "RxFlowTests"
//        )
    ]
)
