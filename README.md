# IoniconsSwift

[Ionicons](http://ionicons.com/) integration for Swift and iOS.

**Built for Swift 3.0** - for older versions of swift please use the `swift\1.2` and `swift\2.0` branches.

## Features

- Includes all *732* icons.
- Tiny API, just one `enum` type and two methods.
- All icons are always balanced and squared.
- Generate icons as `UIImage` or `UILabel`


## Installation

[Carthage](https://github.com/Carthage/Carthage): Add `github tidwall/IoniconsSwift` to your `Cartfile`.  
[CocoaPods](https://cocoapods.org): Add `pod 'IoniconsSwift', :git => 'http://github.com/tidwall/IoniconsSwift.git', :branch => 'master'` to your `Podfile`.


## Example
```swift
import IoniconsSwift

// Square UIImage of an icon.
let image = Ionicons.alert.image(35)                                 
let image = Ionicons.iosClock.image(35, color: UIColor.greenColor()) 

// Square UILabel
let label = Ionicons.alert.label(35)                                 
let label = Ionicons.iosClock.label(35, color: UIColor.greenColor()) 

```

## Contact
Josh Baker [@tidwall](http://twitter.com/tidwall)

## License

The IoniconsSwift source code is available under the MIT License.
