#  Changelog

## 1.2.0 — 2018-11-28

### Added

- Ability to colourise bezel through property on `CADeviceLayer`
- Ability to colourise screen through property on `CADeviceLayer`
- Ability to colourise home button through property on `CADeviceLayer`¹
- Ability to colourise speaker grill through property on `CADeviceLayer`¹
- Ability to colourise camera through property on `CADeviceLayer`¹

¹ Layer colour is only set when the device has the hardware

### Changed

- Returned device icon is now a `CADeviceLayer` not `CAShapeLayer` (non-breaking change)

## 1.1.0 — 2018-11-22

### Added

- Support for new iPad Pro 11-inch
- Support for new iPad Pro 12.9-inch (gen 3)

### Changed

-  Updated paths to directly use `UIBezierPath` instead of parsing SVG path with SVGPath library

### Removed

- No longer has a dependency on SVGPath

## 1.0.0/1.0.1 – 2018-11-11

### Added

- Initial release
