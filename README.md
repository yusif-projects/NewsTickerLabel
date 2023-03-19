# NewsTickerLabel

NewsTickerLabel is a customizable UI element written in Swift that animates a label like it's a [news ticker](https://en.wikipedia.org/wiki/News_ticker).

![iOS 13.0+](https://img.shields.io/badge/iOS-13.0%2B-blue.svg)
![Swift 5.5+](https://img.shields.io/badge/Swift-5.5%2B-orange.svg)

## Installation

To integrate using Apple's Swift package manager, add the following as a dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/yusif-projects/NewsTickerLabel", .upToNextMajor(from: "1.0.0"))
```

and then specify `"NewsTickerLabel"` as a dependency of the Target in which you wish to use NewsTickerLabel.
Here's an example `PackageDescription`:

```swift
// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "MyPackage",

    products: [
        .library(name: "MyPackage", targets: ["MyPackage"])
    ],

    dependencies: [
        .package(url: "https://github.com/yusif-projects/NewsTickerLabel", .upToNextMajor(from: "1.0.0"))
    ],

    targets: [
        .target(name: "MyPackage", dependencies: ["NewsTickerLabel"])
    ]
)
```

## Usage

## License

[MIT](https://choosealicense.com/licenses/mit/)
