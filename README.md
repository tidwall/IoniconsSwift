# IoniconsSwift

[Ionicons](http://ionicons.com/) integration for Swift project.

## Installation

[Carthage](https://github.com/Carthage/Carthage): Add `github tidwall/IonIconsSwift` to your `Cartfile`.

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
