// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AmazonPublisherServicesInMobiAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AmazonPublisherServicesInMobiAdapter", targets: ["APSInMobiAdapterTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", from: "5.6.6"),
        .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package.git", from: "11.0.0")
    ],
    targets: [
        .target(
            name: "APSInMobiAdapterTarget",
            dependencies: [
                "APSiOSInMobiAdapter",
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
                .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package")
            ],
            path: "Sources/APSInMobiAdapterTarget"
        ),
        .binaryTarget(
            name: "APSiOSInMobiAdapter",
            url: "https://d14jk8f50gmy3e.cloudfront.net/iOS_APS_InMobi_Adapter_SPM/APSInMobiAdapter-1.1.1.zip",
            checksum: "268cabb9fd40d66b66316ba0df0357025dc6eb50b560be9f11b5ecb3e06fb5f6"
        )
    ]
)
