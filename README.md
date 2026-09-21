# Amazon Publisher Services InMobi Adapter — Swift Package Manager

Swift Package Manager distribution for the APS InMobi mediation adapter.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- Amazon Publisher Services SDK 5.6.6+
- InMobi SDK 11.0.0+

## Installation

**Xcode**

1. File → Add Package Dependencies…
2. Enter `https://github.com/amzn/swift-package-manager-amazon-aps-inmobi.git`
3. Select "Up to Next Major Version" from `1.1.1`.
4. Add the `AmazonPublisherServicesInMobiAdapter` product to your app target.

**Package.swift**

```swift
.package(url: "https://github.com/amzn/swift-package-manager-amazon-aps-inmobi.git", from: "1.1.1")
```

Then add the product:

```swift
.product(name: "AmazonPublisherServicesInMobiAdapter", package: "swift-package-manager-amazon-aps-inmobi")
```

Adding this package transitively pulls in the APS SDK and the InMobi SDK — you do not need to add them separately.

## Usage

```objc
// Objective-C
#import <DTBiOSSDK/DTBiOSSDK.h>
```

```swift
// Swift
import DTBiOSSDK
```

`AmazonPublisherServicesInMobiAdapter` is the SPM **product** (what you attach in Xcode). Adapter classes are loaded automatically at runtime via `NSClassFromString` — you do not need to import the adapter module in application code.

## `-ObjC` linker flag

Add `-ObjC` to **Build Settings → Other Linker Flags** for your app target. Required by DTBiOSSDK and InMobi SDK.

## License

Apache License 2.0. See [LICENSE](./LICENSE).
