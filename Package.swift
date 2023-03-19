// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "NewsTickerLabel",
    
    platforms: [.iOS(.v13)],
    
    products: [
        .library(name: "NewsTickerLabel", targets: ["NewsTickerLabel"])
    ],
    
    dependencies: [],
    
    targets: [
        .target(name: "NewsTickerLabel", dependencies: [])
    ]
)
