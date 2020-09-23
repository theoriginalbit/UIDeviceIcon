# UIDeviceIcon

A µframework to detect and provide an icon to represent the device model through an extension of UIDevice. Also detects the simulator and the device model it is simulating.

## Installation

### Swift Package Manager

```swift
.package(url: "https://github.com/theoriginalbit/UIDeviceIcon.git", .upToNextMajor(from: "3.0.0"))
```

## Usage

First import the framework

```swift
import UIDeviceIcon
```

Common usage would be to use in a switch statement

```swift
let deviceIcon = UIDevice.current.deviceIcon

switch deviceIcon {
case .deviceIcon(let deviceIcon):
    break // You have a CADeviceLayer (CAShapeLayer), now do with it as you wish!
case .unknown(let deviceIdentifier):
    break // UIDeviceModel was unable to determine what device this identifier matched
case .unsupported(let deviceModel):
    break // UIDeviceIcon does not have an SVG path to represent this device model
}
```

As of version `1.2` you can specify colours of the screen and speaker, camera, and home button (when available).

```swift
let deviceIcon: CADeviceLayer = ...

deviceIcon.bezelColor = .white // .fillColor also works
deviceIcon.screenColor = .red
deviceIcon.cameraColor = .green
deviceIcon.speakerColor = .orange
deviceIcon.homeColor = .blue
```

Take a look at the Example application for a working implementation.
