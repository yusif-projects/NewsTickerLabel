# NewsTickerLabel

NewsTickerLabel is a customizable UI element written in Swift that animates a label like it's a [news ticker](https://en.wikipedia.org/wiki/News_ticker).

![iOS 13.0+](https://img.shields.io/badge/iOS-13.0%2B-blue.svg)
![Swift 5.5+](https://img.shields.io/badge/Swift-5.5%2B-orange.svg)

![License](https://img.shields.io/github/license/yusif-projects/NewsTickerLabel)

![Follow](https://img.shields.io/github/followers/yusif-projects?style=social)
![Star](https://img.shields.io/github/stars/yusif-projects/NewsTickerLabel?style=social)

## 🚚 Installation

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

## 🏗 Usage

You can find a [demo application](https://github.com/yusif-projects/NewsTickerLabel/tree/main/Example%20Project) that demonstrates the usage of NewsTickerLabel.

### Using UIStoryBoard Interface Builder

- Drag and drop a **UIView** object from the ***object library***.
- In the ***identity inspector*** change the class from **UIView** to **NewsTickerLabel**.
- Customize the parameters in the ***attributes inspector***.
- Connect the **NewsTickerLabel** object to your controller by creating an outlet.

```swift
class ViewController: UIViewController {
    
    @IBOutlet weak var newsTickerLabel: NewsTickerLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
```

- In the ***viewDidAppear*** call the **activate()** method of your **NewsTickerLabel** object.

```swift
override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    newsTickerLabel.activate()
}
```

## 📝 License

[GNU GPLv3](https://choosealicense.com/licenses/gpl-3.0/)
