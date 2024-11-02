// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "PolarBleSdk",
    platforms: [
        .iOS(.v14), .watchOS(.v5)
    ],
    
    products: [
        .library( name: "PolarBleSdk", targets: ["PolarBleSdk"]),
    ],
    dependencies: [
        .package(name: "RxSwift", url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.5.0")),
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
        .package(url: "https://github.com/marmelroy/Zip.git", .upToNextMajor(from: "2.1.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.1"))
        
    ],
    targets: [
        .target(
            name: "PolarBleSdk",
            dependencies: ["SwiftProtobuf", "RxSwift", "Zip", "Alamofire"],
            path: "sources/iOS/ios-communications/Sources",
            exclude: ["iOSCommunications/Info.plist", "PolarBleSdk/Info.plist"]
        ),
    ]
)
