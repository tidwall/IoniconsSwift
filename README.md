# IoniconsSwift

[Ionicons](http://ionicons.com/) integration for Swift and iOS.

## Features

- Includes all 732 of the icons in 2.0.1
- Tiny API, just one `enum` type and two methods.
- All icons are always balanced and squared.
- Generate icons as `UIImage` or `UILabel`


## Installation

[Carthage](https://github.com/Carthage/Carthage): Add `github tidwall/IoniconsSwift` to your `Cartfile`.

## Example
```swift
import IoniconsSwift

// Square UIImage of an icon.
let image = Ionicons.Alert.image(35)                                 
let image = Ionicons.IosClock.image(35, color: UIColor.greenColor()) 

// Square UILabel
let label = Ionicons.Alert.label(35)                                 
let label = Ionicons.IosClock.label(35, color: UIColor.greenColor()) 

```

## Contact
Josh Baker [@tidwall](http://twitter.com/tidwall)

## License

The IoniconsSwift source code is available under the MIT License.
