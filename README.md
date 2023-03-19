![Follow](https://img.shields.io/github/followers/yusif-projects?style=social)
![Star](https://img.shields.io/github/stars/yusif-projects/NewsTickerLabel?style=social)
![iOS 13.0+](https://img.shields.io/badge/iOS-13.0%2B-blue.svg)
![Swift 5.5+](https://img.shields.io/badge/Swift-5.5%2B-orange.svg)
![License](https://img.shields.io/github/license/yusif-projects/NewsTickerLabel)

# NewsTickerLabel

A customizable UI element written in Swift that animates a label like it's a [news ticker](https://en.wikipedia.org/wiki/News_ticker).
- ✅ Interface builder supported!
- ✅ Animates only if text doen't fit the screen!
- ✅ Supports both left-to-right and right-to-left texts!

<img src="https://github.com/yusif-projects/NewsTickerLabel/blob/main/Images%20and%20Gifs/Demo.gif" width="480"/>

## 🚚 Installation

To integrate using Apple's Swift package manager, add the following as a dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/yusif-projects/NewsTickerLabel", .upToNextMajor(from: "1.0.0"))
```

Then specify `"NewsTickerLabel"` as a dependency of the Target in which you wish to use `NewsTickerLabel`. Here's an example `PackageDescription`:

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

You can find an [example project](https://github.com/yusif-projects/NewsTickerLabel/tree/main/Example%20Project) in this repository that demonstrates the usage of `NewsTickerLabel`.

### Using UIStoryBoard Interface Builder

- Drag and drop a `UIView` object from the ***object library***.

<img src="https://github.com/yusif-projects/NewsTickerLabel/blob/main/Images%20and%20Gifs/Object%20Library.png" width="500"/>

- In the ***identity inspector*** change the class from `UIView` to `NewsTickerLabel`.

<img src="https://github.com/yusif-projects/NewsTickerLabel/blob/main/Images%20and%20Gifs/Custom%20Class.png" width="300"/>

- Customize the parameters in the ***attributes inspector***.

<img src="https://github.com/yusif-projects/NewsTickerLabel/blob/main/Images%20and%20Gifs/Custom%20Parameters.png" width="300"/>

- Connect the `NewsTickerLabel` object to your controller by creating an outlet.

```swift
class ViewController: UIViewController {
    
    @IBOutlet weak var newsTickerLabel: NewsTickerLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
```

- In the `viewDidAppear()` call the `activate()` method of your `NewsTickerLabel` object.

```swift
override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    newsTickerLabel.activate()
}
```

## 📝 License

[GNU GPLv3](https://choosealicense.com/licenses/gpl-3.0/)
