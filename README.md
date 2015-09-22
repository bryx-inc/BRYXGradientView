# BRYXGradientView

A lightweight gradient view for iOS 7+, written in Swift, with support for Auto Layout and Interface Builder.

## Usage
### Programmatically
Create a gradient view using the designated initializer.
```rust
let gradientView = GradientView(topColor: UIColor.cyanColor(), bottomColor: UIColor.blueColor())
```

Change colors after initialization:
```rust
 gradientView.topColor = UIColor.yellowColor()
 gradientView.bottomColor = UIColor.orangeColor()
```

Change the colors of the CAGradientLayer directly:
```rust
gradientView.gradientLayer.colors = [UIColor.redColor().CGColor, UIColor.orangeColor().CGColor, UIColor.yellowColor().CGColor]
```
### Interface Builder
Drag a View object to the Interface Builder canvas, and change the Class in the Identity inspector:

![Identity inspector](https://cloud.githubusercontent.com/assets/1874785/10002009/bf393040-6072-11e5-9b5e-85998e291aa6.png)

Then change the colors in the Attributes inspector:

![Attributes inspector](https://cloud.githubusercontent.com/assets/1874785/10002010/bf41f130-6072-11e5-92e1-9c5074a52568.png)


## Requirements
Demo project requires iOS 8+, 

## Author
Adam Binsz, adam@adambinsz.com

## License
BRYXGradientView is available under the MIT license. See the LICENSE file for more info.