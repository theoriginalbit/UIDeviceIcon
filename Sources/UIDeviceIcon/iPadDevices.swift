//
//  iPadDevices.swift
//  UIDeviceIcon
//
//  Created by theoriginalbit on 28/11/18.
//  Copyright © 2018 theoriginalbit. All rights reserved.
//

import UIKit

class iPadDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.37, y: 0.36))
        path.addCurve(to: CGPoint(x: 1.26, y: 0), controlPoint1: CGPoint(x: 0.6, y: 0.13), controlPoint2: CGPoint(x: 0.92, y: 0))
        path.addLine(to: CGPoint(x: 26.74, y: 0))
        path.addCurve(to: CGPoint(x: 27.63, y: 0.36), controlPoint1: CGPoint(x: 27.08, y: 0), controlPoint2: CGPoint(x: 27.4, y: 0.13))
        path.addCurve(to: CGPoint(x: 28, y: 1.25), controlPoint1: CGPoint(x: 27.87, y: 0.6), controlPoint2: CGPoint(x: 28, y: 0.92))
        path.addLine(to: CGPoint(x: 28, y: 38.75))
        path.addCurve(to: CGPoint(x: 27.63, y: 39.64), controlPoint1: CGPoint(x: 28, y: 39.08), controlPoint2: CGPoint(x: 27.87, y: 39.4))
        path.addCurve(to: CGPoint(x: 26.74, y: 40), controlPoint1: CGPoint(x: 27.4, y: 39.87), controlPoint2: CGPoint(x: 27.08, y: 40))
        path.addLine(to: CGPoint(x: 1.26, y: 40))
        path.addCurve(to: CGPoint(x: 0.37, y: 39.64), controlPoint1: CGPoint(x: 0.92, y: 40), controlPoint2: CGPoint(x: 0.6, y: 39.87))
        path.addCurve(to: CGPoint(x: 0, y: 38.75), controlPoint1: CGPoint(x: 0.13, y: 39.4), controlPoint2: CGPoint(x: 0, y: 39.08))
        path.addLine(to: CGPoint(x: 0, y: 1.25))
        path.addCurve(to: CGPoint(x: 0.37, y: 0.36), controlPoint1: CGPoint(x: 0, y: 0.92), controlPoint2: CGPoint(x: 0.13, y: 0.6))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 2, y: 4, width: 24, height: 32))
    
    var camera: UIBezierPath?
    
    var speaker: UIBezierPath?
    
    var home: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 13, y: 37, width: 2, height: 2))
}

class iPad2Device: iPadDevice {
    
    override init() {
        super.init()
        camera = UIBezierPath(ovalIn: CGRect(x: 13.5, y: 1.5, width: 1, height: 1))
    }
}

struct iPadAirDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.07, y: 0))
        path.addLine(to: CGPoint(x: 24.92, y: 0))
        path.addCurve(to: CGPoint(x: 26, y: 1.15), controlPoint1: CGPoint(x: 25.62, y: 0), controlPoint2: CGPoint(x: 26, y: 0.45))
        path.addLine(to: CGPoint(x: 26, y: 36.35))
        path.addCurve(to: CGPoint(x: 24.93, y: 38), controlPoint1: CGPoint(x: 26, y: 37.05), controlPoint2: CGPoint(x: 25.62, y: 38))
        path.addLine(to: CGPoint(x: 1.07, y: 38))
        path.addCurve(to: CGPoint(x: 0, y: 36.35), controlPoint1: CGPoint(x: 0.38, y: 38), controlPoint2: CGPoint(x: 0, y: 37.05))
        path.addLine(to: CGPoint(x: 0, y: 1.15))
        path.addCurve(to: CGPoint(x: 1.07, y: 0), controlPoint1: CGPoint(x: 0, y: 0.45), controlPoint2: CGPoint(x: 0.38, y: 0))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 2, y: 3.5, width: 22, height: 30.5))
    
    var camera: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 12.5, y: 1.34, width: 1, height: 1))
    
    var speaker: UIBezierPath?
    
    var home: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 12.01, y: 35.03, width: 1.99, height: 1.99))
}

struct iPadPro10InchDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.23, y: 0))
        path.addLine(to: CGPoint(x: 26.76, y: 0))
        path.addCurve(to: CGPoint(x: 28, y: 1.24), controlPoint1: CGPoint(x: 27.45, y: 0), controlPoint2: CGPoint(x: 28, y: 0.54))
        path.addLine(to: CGPoint(x: 28, y: 41.76))
        path.addCurve(to: CGPoint(x: 26.76, y: 43), controlPoint1: CGPoint(x: 28, y: 42.46), controlPoint2: CGPoint(x: 27.44, y: 43))
        path.addLine(to: CGPoint(x: 1.23, y: 43))
        path.addCurve(to: CGPoint(x: 0, y: 41.76), controlPoint1: CGPoint(x: 0.55, y: 43), controlPoint2: CGPoint(x: 0, y: 42.46))
        path.addLine(to: CGPoint(x: 0, y: 1.24))
        path.addCurve(to: CGPoint(x: 1.23, y: 0), controlPoint1: CGPoint(x: 0, y: 0.54), controlPoint2: CGPoint(x: 0.55, y: 0))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 2, y: 4, width: 24, height: 34.99))
    
    var camera: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 13.38, y: 1.38, width: 1.24, height: 1.24))
    
    var speaker: UIBezierPath?
    
    var home: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 13.02, y: 40, width: 2, height: 2))
}

struct iPadPro11InchDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.36, y: 0))
        path.addLine(to: CGPoint(x: 28.69, y: 0))
        path.addCurve(to: CGPoint(x: 30, y: 1.51), controlPoint1: CGPoint(x: 29.45, y: 0.08), controlPoint2: CGPoint(x: 30.03, y: 0.74))
        path.addLine(to: CGPoint(x: 30, y: 41.68))
        path.addCurve(to: CGPoint(x: 29.62, y: 42.62), controlPoint1: CGPoint(x: 30.01, y: 42.03), controlPoint2: CGPoint(x: 29.87, y: 42.37))
        path.addCurve(to: CGPoint(x: 28.69, y: 43), controlPoint1: CGPoint(x: 29.38, y: 42.86), controlPoint2: CGPoint(x: 29.04, y: 43))
        path.addLine(to: CGPoint(x: 1.36, y: 43))
        path.addCurve(to: CGPoint(x: 0.41, y: 42.62), controlPoint1: CGPoint(x: 1, y: 43.01), controlPoint2: CGPoint(x: 0.66, y: 42.87))
        path.addCurve(to: CGPoint(x: 0, y: 41.68), controlPoint1: CGPoint(x: 0.15, y: 42.37), controlPoint2: CGPoint(x: 0.01, y: 42.04))
        path.addLine(to: CGPoint(x: 0, y: 1.51))
        path.addCurve(to: CGPoint(x: 1.36, y: 0), controlPoint1: CGPoint(x: 0, y: 0.73), controlPoint2: CGPoint(x: 0.59, y: 0.08))
        return path
    }()
    
    var screen: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3, y: 2))
        path.addLine(to: CGPoint(x: 27, y: 2))
        path.addCurve(to: CGPoint(x: 28, y: 3), controlPoint1: CGPoint(x: 27.55, y: 2), controlPoint2: CGPoint(x: 28, y: 2.45))
        path.addLine(to: CGPoint(x: 28, y: 40))
        path.addCurve(to: CGPoint(x: 27, y: 41), controlPoint1: CGPoint(x: 28, y: 40.55), controlPoint2: CGPoint(x: 27.55, y: 41))
        path.addLine(to: CGPoint(x: 3, y: 41))
        path.addCurve(to: CGPoint(x: 2, y: 40), controlPoint1: CGPoint(x: 2.45, y: 41), controlPoint2: CGPoint(x: 2, y: 40.55))
        path.addLine(to: CGPoint(x: 2, y: 3))
        path.addCurve(to: CGPoint(x: 3, y: 2), controlPoint1: CGPoint(x: 2, y: 2.45), controlPoint2: CGPoint(x: 2.45, y: 2))
        return path
    }()
    
    var camera: UIBezierPath?
    
    var speaker: UIBezierPath?
    
    var home: UIBezierPath?
}

struct iPadPro12InchDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.49, y: 0))
        path.addLine(to: CGPoint(x: 32.49, y: 0))
        path.addCurve(to: CGPoint(x: 34, y: 1.38), controlPoint1: CGPoint(x: 33.33, y: 0), controlPoint2: CGPoint(x: 34, y: 0.6))
        path.addLine(to: CGPoint(x: 34, y: 46.62))
        path.addCurve(to: CGPoint(x: 32.49, y: 48), controlPoint1: CGPoint(x: 34, y: 47.4), controlPoint2: CGPoint(x: 33.32, y: 48))
        path.addLine(to: CGPoint(x: 1.49, y: 48))
        path.addCurve(to: CGPoint(x: 0, y: 46.62), controlPoint1: CGPoint(x: 0.67, y: 48), controlPoint2: CGPoint(x: 0, y: 47.4))
        path.addLine(to: CGPoint(x: 0, y: 1.38))
        path.addCurve(to: CGPoint(x: 1.49, y: 0), controlPoint1: CGPoint(x: 0, y: 0.6), controlPoint2: CGPoint(x: 0.67, y: 0))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 2, y: 4, width: 30, height: 39.99))
    
    var camera: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 16.25, y: 1.25, width: 1.5, height: 1.5))
    
    var speaker: UIBezierPath?
    
    var home: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 16, y: 44.99, width: 2, height: 2))
}

struct iPadPro12Inch3Device: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.31, y: 0))
        path.addLine(to: CGPoint(x: 32.69, y: 0))
        path.addCurve(to: CGPoint(x: 34, y: 1.48), controlPoint1: CGPoint(x: 33.44, y: 0.08), controlPoint2: CGPoint(x: 34.01, y: 0.73))
        path.addLine(to: CGPoint(x: 34, y: 46.68))
        path.addCurve(to: CGPoint(x: 33.59, y: 47.62), controlPoint1: CGPoint(x: 34, y: 47.04), controlPoint2: CGPoint(x: 33.85, y: 47.37))
        path.addCurve(to: CGPoint(x: 32.64, y: 48), controlPoint1: CGPoint(x: 33.34, y: 47.87), controlPoint2: CGPoint(x: 33, y: 48.01))
        path.addLine(to: CGPoint(x: 1.36, y: 48))
        path.addCurve(to: CGPoint(x: 0.41, y: 47.62), controlPoint1: CGPoint(x: 1, y: 48.01), controlPoint2: CGPoint(x: 0.66, y: 47.87))
        path.addCurve(to: CGPoint(x: 0, y: 46.68), controlPoint1: CGPoint(x: 0.15, y: 47.37), controlPoint2: CGPoint(x: 0.01, y: 47.04))
        path.addLine(to: CGPoint(x: 0, y: 1.48))
        path.addCurve(to: CGPoint(x: 1.31, y: 0), controlPoint1: CGPoint(x: -0.01, y: 0.73), controlPoint2: CGPoint(x: 0.56, y: 0.08))
        return path
    }()
    
    var screen: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3, y: 2))
        path.addLine(to: CGPoint(x: 31, y: 2))
        path.addCurve(to: CGPoint(x: 32, y: 3), controlPoint1: CGPoint(x: 31.61, y: 2.06), controlPoint2: CGPoint(x: 32, y: 2.48))
        path.addLine(to: CGPoint(x: 32, y: 45))
        path.addCurve(to: CGPoint(x: 31, y: 46), controlPoint1: CGPoint(x: 32, y: 45.55), controlPoint2: CGPoint(x: 31.55, y: 46))
        path.addLine(to: CGPoint(x: 3, y: 46))
        path.addCurve(to: CGPoint(x: 2, y: 45), controlPoint1: CGPoint(x: 2.45, y: 46), controlPoint2: CGPoint(x: 2, y: 45.55))
        path.addLine(to: CGPoint(x: 2, y: 3))
        path.addCurve(to: CGPoint(x: 3, y: 2), controlPoint1: CGPoint(x: 2, y: 2.45), controlPoint2: CGPoint(x: 2.45, y: 2))
        return path
    }()
    
    var camera: UIBezierPath?
    
    var speaker: UIBezierPath?
    
    var home: UIBezierPath?
}

struct iPadMiniDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 1.27, y: 0))
        path.addLine(to: CGPoint(x: 20.74, y: 0))
        path.addCurve(to: CGPoint(x: 22, y: 1.26), controlPoint1: CGPoint(x: 21.42, y: 0.02), controlPoint2: CGPoint(x: 21.98, y: 0.57))
        path.addLine(to: CGPoint(x: 22, y: 29.74))
        path.addCurve(to: CGPoint(x: 20.74, y: 31), controlPoint1: CGPoint(x: 21.97, y: 30.43), controlPoint2: CGPoint(x: 21.42, y: 30.98))
        path.addLine(to: CGPoint(x: 1.27, y: 31))
        path.addCurve(to: CGPoint(x: 0, y: 29.8), controlPoint1: CGPoint(x: 0.59, y: 31), controlPoint2: CGPoint(x: 0.03, y: 30.48))
        path.addLine(to: CGPoint(x: 0.01, y: 1.26))
        path.addCurve(to: CGPoint(x: 1.27, y: 0), controlPoint1: CGPoint(x: 0.03, y: 0.57), controlPoint2: CGPoint(x: 0.58, y: 0.02))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 2, y: 3, width: 18, height: 25))
    
    var camera: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 10.51, y: 1.25, width: 0.86, height: 0.86))
    
    var speaker: UIBezierPath?
    
    var home: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 10, y: 28.5, width: 2, height: 2))
}
