//
//  iPhoneDevices.swift
//  UIDeviceIcon
//
//  Created by theoriginalbit on 28/11/18.
//  Copyright © 2018 theoriginalbit. All rights reserved.
//

import UIKit

struct iPhone5sDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3, y: 0))
        path.addLine(to: CGPoint(x: 14.06, y: 0))
        path.addCurve(to: CGPoint(x: 17, y: 2.94), controlPoint1: CGPoint(x: 15.82, y: 0), controlPoint2: CGPoint(x: 17, y: 1.21))
        path.addLine(to: CGPoint(x: 17, y: 32.07))
        path.addCurve(to: CGPoint(x: 14.06, y: 35), controlPoint1: CGPoint(x: 17, y: 33.8), controlPoint2: CGPoint(x: 15.79, y: 35))
        path.addLine(to: CGPoint(x: 3, y: 35))
        path.addCurve(to: CGPoint(x: 0, y: 32.07), controlPoint1: CGPoint(x: 1.23, y: 35), controlPoint2: CGPoint(x: 0, y: 33.82))
        path.addLine(to: CGPoint(x: 0, y: 2.94))
        path.addCurve(to: CGPoint(x: 3, y: 0), controlPoint1: CGPoint(x: 0, y: 1.18), controlPoint2: CGPoint(x: 1.23, y: 0))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 1, y: 4, width: 15, height: 27))
    
    var camera: UIBezierPath?
    
    var speaker: UIBezierPath? = UIBezierPath(rect: CGRect(x: 7, y: 2, width: 3, height: 0.5))
    
    var home: UIBezierPath? = {
        let path = UIBezierPath(ovalIn: CGRect(x: 7, y: 31.5, width: 3, height: 3))
        path.append(UIBezierPath(ovalIn: CGRect(x: 7.5, y: 32, width: 2, height: 2)).reversing())
        return path
    }()
}

struct iPhoneSEDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3, y: 0))
        path.addLine(to: CGPoint(x: 14.06, y: 0))
        path.addCurve(to: CGPoint(x: 17, y: 2.93), controlPoint1: CGPoint(x: 15.82, y: 0), controlPoint2: CGPoint(x: 17, y: 1.21))
        path.addLine(to: CGPoint(x: 17, y: 32.07))
        path.addCurve(to: CGPoint(x: 14.06, y: 35), controlPoint1: CGPoint(x: 17, y: 33.8), controlPoint2: CGPoint(x: 15.79, y: 35))
        path.addLine(to: CGPoint(x: 3, y: 35))
        path.addCurve(to: CGPoint(x: 0, y: 32.06), controlPoint1: CGPoint(x: 1.23, y: 35), controlPoint2: CGPoint(x: 0, y: 33.82))
        path.addLine(to: CGPoint(x: 0, y: 2.93))
        path.addCurve(to: CGPoint(x: 3, y: 0), controlPoint1: CGPoint(x: 0, y: 1.18), controlPoint2: CGPoint(x: 1.23, y: 0))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 1, y: 4, width: 15, height: 27))
    
    var camera: UIBezierPath?
    
    var speaker: UIBezierPath? = UIBezierPath(rect: CGRect(x: 7, y: 2, width: 3, height: 0.5))
    
    var home: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 7.5, y: 32, width: 2, height: 2))
}

struct iPhone6Device: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 2.87, y: 0))
        path.addLine(to: CGPoint(x: 16.11, y: 0))
        path.addCurve(to: CGPoint(x: 19, y: 2.83), controlPoint1: CGPoint(x: 17.7, y: 0), controlPoint2: CGPoint(x: 19, y: 1.28))
        path.addLine(to: CGPoint(x: 19, y: 35.15))
        path.addCurve(to: CGPoint(x: 16.11, y: 38), controlPoint1: CGPoint(x: 19, y: 36.71), controlPoint2: CGPoint(x: 17.7, y: 38))
        path.addLine(to: CGPoint(x: 2.87, y: 38))
        path.addCurve(to: CGPoint(x: 0, y: 35.15), controlPoint1: CGPoint(x: 1.28, y: 38), controlPoint2: CGPoint(x: 0, y: 36.71))
        path.addLine(to: CGPoint(x: 0, y: 2.83))
        path.addCurve(to: CGPoint(x: 2.87, y: 0), controlPoint1: CGPoint(x: 0, y: 1.28), controlPoint2: CGPoint(x: 1.28, y: 0))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 0.86, y: 4.22, width: 17.27, height: 29.56))
    
    var camera: UIBezierPath?
    
    var speaker: UIBezierPath? = UIBezierPath(rect: CGRect(x: 8.2, y: 2.11, width: 2.6, height: 0.42))
    
    var home: UIBezierPath? = {
        let path = UIBezierPath(ovalIn: CGRect(x: 7.99, y: 34.41, width: 3.02, height: 2.96))
        path.append(UIBezierPath(ovalIn: CGRect(x: 8.64, y: 35.04, width: 1.73, height: 1.69)).reversing())
        return path
    }()
}

struct iPhone6PlusDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3.33, y: 0))
        path.addLine(to: CGPoint(x: 18.65, y: 0))
        path.addCurve(to: CGPoint(x: 22, y: 3.35), controlPoint1: CGPoint(x: 20.49, y: 0), controlPoint2: CGPoint(x: 22, y: 1.51))
        path.addLine(to: CGPoint(x: 22, y: 41.63))
        path.addCurve(to: CGPoint(x: 18.65, y: 45), controlPoint1: CGPoint(x: 22, y: 43.48), controlPoint2: CGPoint(x: 20.49, y: 45))
        path.addLine(to: CGPoint(x: 3.33, y: 45))
        path.addCurve(to: CGPoint(x: 0, y: 41.63), controlPoint1: CGPoint(x: 1.48, y: 45), controlPoint2: CGPoint(x: 0, y: 43.48))
        path.addLine(to: CGPoint(x: 0, y: 3.35))
        path.addCurve(to: CGPoint(x: 3.33, y: 0), controlPoint1: CGPoint(x: 0, y: 1.51), controlPoint2: CGPoint(x: 1.48, y: 0))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 1, y: 5, width: 20, height: 35))
    
    var camera: UIBezierPath?
    
    var speaker: UIBezierPath? = UIBezierPath(rect: CGRect(x: 9.5, y: 2.5, width: 3, height: 0.5))
    
    var home: UIBezierPath? = {
        let path = UIBezierPath(ovalIn: CGRect(x: 9.25, y: 40.75, width: 3.5, height: 3.5))
        path.append(UIBezierPath(ovalIn: CGRect(x: 10, y: 41.5, width: 2, height: 2)).reversing())
        return path
    }()
}

struct iPhoneXDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 2.99, y: 0))
        path.addLine(to: CGPoint(x: 17.01, y: 0))
        path.addCurve(to: CGPoint(x: 20, y: 2.99), controlPoint1: CGPoint(x: 18.66, y: 0), controlPoint2: CGPoint(x: 20, y: 1.35))
        path.addLine(to: CGPoint(x: 20, y: 38.01))
        path.addCurve(to: CGPoint(x: 17, y: 41), controlPoint1: CGPoint(x: 20, y: 39.66), controlPoint2: CGPoint(x: 18.64, y: 41))
        path.addLine(to: CGPoint(x: 3, y: 41))
        path.addCurve(to: CGPoint(x: 0, y: 38.01), controlPoint1: CGPoint(x: 1.36, y: 41), controlPoint2: CGPoint(x: 0, y: 39.66))
        path.addLine(to: CGPoint(x: 0, y: 2.99))
        path.addCurve(to: CGPoint(x: 2.99, y: 0), controlPoint1: CGPoint(x: 0, y: 1.34), controlPoint2: CGPoint(x: 1.34, y: 0))
        return path
    }()
    
    var screen: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 2.8, y: 1))
        path.addLine(to: CGPoint(x: 4.56, y: 1))
        path.addCurve(to: CGPoint(x: 5, y: 1.36), controlPoint1: CGPoint(x: 4.71, y: 1.02), controlPoint2: CGPoint(x: 4.97, y: 1.11))
        path.addCurve(to: CGPoint(x: 5, y: 2.17), controlPoint1: CGPoint(x: 5, y: 1.38), controlPoint2: CGPoint(x: 4.99, y: 2.11))
        path.addCurve(to: CGPoint(x: 6.02, y: 3), controlPoint1: CGPoint(x: 5.07, y: 2.56), controlPoint2: CGPoint(x: 5.3, y: 3))
        path.addLine(to: CGPoint(x: 13.98, y: 3))
        path.addCurve(to: CGPoint(x: 15, y: 2.17), controlPoint1: CGPoint(x: 14.71, y: 3), controlPoint2: CGPoint(x: 14.94, y: 2.56))
        path.addCurve(to: CGPoint(x: 15, y: 1.36), controlPoint1: CGPoint(x: 15.01, y: 2.11), controlPoint2: CGPoint(x: 15, y: 1.39))
        path.addCurve(to: CGPoint(x: 15.44, y: 1), controlPoint1: CGPoint(x: 15.03, y: 1.11), controlPoint2: CGPoint(x: 15.29, y: 1.02))
        path.addLine(to: CGPoint(x: 17.2, y: 1))
        path.addCurve(to: CGPoint(x: 19, y: 2.8), controlPoint1: CGPoint(x: 18.19, y: 1), controlPoint2: CGPoint(x: 19, y: 1.81))
        path.addLine(to: CGPoint(x: 19, y: 38.2))
        path.addCurve(to: CGPoint(x: 17.2, y: 40), controlPoint1: CGPoint(x: 19, y: 39.19), controlPoint2: CGPoint(x: 18.19, y: 40))
        path.addLine(to: CGPoint(x: 2.8, y: 40))
        path.addCurve(to: CGPoint(x: 1, y: 38.2), controlPoint1: CGPoint(x: 1.81, y: 40), controlPoint2: CGPoint(x: 1, y: 39.19))
        path.addLine(to: CGPoint(x: 1, y: 2.8))
        path.addCurve(to: CGPoint(x: 2.8, y: 1), controlPoint1: CGPoint(x: 1, y: 1.81), controlPoint2: CGPoint(x: 1.81, y: 1))
        return path
    }()
    
    var camera: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 12.22, y: 1.3, width: 0.76, height: 0.76))
    
    var speaker: UIBezierPath? = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 8.47, y: 1.49))
        path.addLine(to: CGPoint(x: 11.21, y: 1.49))
        path.addCurve(to: CGPoint(x: 11.4, y: 1.67), controlPoint1: CGPoint(x: 11.39, y: 1.49), controlPoint2: CGPoint(x: 11.4, y: 1.63))
        path.addLine(to: CGPoint(x: 11.4, y: 1.7))
        path.addCurve(to: CGPoint(x: 11.21, y: 1.88), controlPoint1: CGPoint(x: 11.4, y: 1.74), controlPoint2: CGPoint(x: 11.39, y: 1.88))
        path.addLine(to: CGPoint(x: 8.47, y: 1.88))
        path.addCurve(to: CGPoint(x: 8.28, y: 1.7), controlPoint1: CGPoint(x: 8.29, y: 1.88), controlPoint2: CGPoint(x: 8.28, y: 1.74))
        path.addLine(to: CGPoint(x: 8.28, y: 1.67))
        path.addCurve(to: CGPoint(x: 8.47, y: 1.49), controlPoint1: CGPoint(x: 8.28, y: 1.63), controlPoint2: CGPoint(x: 8.29, y: 1.49))
        return path
    }()
    
    var home: UIBezierPath?
}

struct iPhoneXRDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3.18, y: 0))
        path.addLine(to: CGPoint(x: 17.82, y: 0))
        path.addCurve(to: CGPoint(x: 21, y: 3.18), controlPoint1: CGPoint(x: 19.57, y: 0.01), controlPoint2: CGPoint(x: 20.99, y: 1.43))
        path.addLine(to: CGPoint(x: 21, y: 40.82))
        path.addCurve(to: CGPoint(x: 17.81, y: 44), controlPoint1: CGPoint(x: 20.99, y: 42.58), controlPoint2: CGPoint(x: 19.57, y: 43.99))
        path.addLine(to: CGPoint(x: 3.19, y: 44))
        path.addCurve(to: CGPoint(x: 0, y: 40.82), controlPoint1: CGPoint(x: 1.43, y: 43.99), controlPoint2: CGPoint(x: 0.01, y: 42.58))
        path.addLine(to: CGPoint(x: 0, y: 3.18))
        path.addCurve(to: CGPoint(x: 3.18, y: 0), controlPoint1: CGPoint(x: 0.01, y: 1.43), controlPoint2: CGPoint(x: 1.43, y: 0.01))
        return path
    }()
    
    var screen: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 2.92, y: 1))
        path.addLine(to: CGPoint(x: 4.55, y: 1))
        path.addCurve(to: CGPoint(x: 5, y: 1.26), controlPoint1: CGPoint(x: 4.7, y: 1), controlPoint2: CGPoint(x: 5, y: 1))
        path.addCurve(to: CGPoint(x: 5, y: 2.11), controlPoint1: CGPoint(x: 5, y: 1.26), controlPoint2: CGPoint(x: 5, y: 2.05))
        path.addCurve(to: CGPoint(x: 6.09, y: 3.01), controlPoint1: CGPoint(x: 5.05, y: 2.66), controlPoint2: CGPoint(x: 5.54, y: 3.06))
        path.addLine(to: CGPoint(x: 14.92, y: 3.01))
        path.addCurve(to: CGPoint(x: 16, y: 2.13), controlPoint1: CGPoint(x: 15.46, y: 3.06), controlPoint2: CGPoint(x: 15.94, y: 2.67))
        path.addCurve(to: CGPoint(x: 16, y: 1.26), controlPoint1: CGPoint(x: 16, y: 2.07), controlPoint2: CGPoint(x: 16, y: 1.28))
        path.addCurve(to: CGPoint(x: 16.47, y: 1), controlPoint1: CGPoint(x: 16, y: 0.99), controlPoint2: CGPoint(x: 16.32, y: 1.03))
        path.addLine(to: CGPoint(x: 18.08, y: 1))
        path.addCurve(to: CGPoint(x: 20, y: 3), controlPoint1: CGPoint(x: 19.15, y: 1.04), controlPoint2: CGPoint(x: 20, y: 1.93))
        path.addLine(to: CGPoint(x: 20, y: 41.08))
        path.addCurve(to: CGPoint(x: 19.44, y: 42.44), controlPoint1: CGPoint(x: 20, y: 41.59), controlPoint2: CGPoint(x: 19.8, y: 42.08))
        path.addCurve(to: CGPoint(x: 18.08, y: 43), controlPoint1: CGPoint(x: 19.08, y: 42.8), controlPoint2: CGPoint(x: 18.59, y: 43))
        path.addLine(to: CGPoint(x: 2.92, y: 43))
        path.addCurve(to: CGPoint(x: 1, y: 41.08), controlPoint1: CGPoint(x: 1.86, y: 43), controlPoint2: CGPoint(x: 1, y: 42.14))
        path.addLine(to: CGPoint(x: 1, y: 3))
        path.addCurve(to: CGPoint(x: 2.92, y: 1), controlPoint1: CGPoint(x: 1, y: 1.93), controlPoint2: CGPoint(x: 1.85, y: 1.04))
        return path
    }()
    
    var camera: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 13.13, y: 1.13, width: 0.76, height: 0.76))
    
    var speaker: UIBezierPath? = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 9, y: 1.25))
        path.addLine(to: CGPoint(x: 12, y: 1.25))
        path.addCurve(to: CGPoint(x: 12.25, y: 1.5), controlPoint1: CGPoint(x: 12.14, y: 1.25), controlPoint2: CGPoint(x: 12.25, y: 1.36))
        path.addCurve(to: CGPoint(x: 12, y: 1.75), controlPoint1: CGPoint(x: 12.25, y: 1.64), controlPoint2: CGPoint(x: 12.14, y: 1.75))
        path.addLine(to: CGPoint(x: 9, y: 1.75))
        path.addCurve(to: CGPoint(x: 8.75, y: 1.5), controlPoint1: CGPoint(x: 8.86, y: 1.75), controlPoint2: CGPoint(x: 8.75, y: 1.64))
        path.addCurve(to: CGPoint(x: 9, y: 1.25), controlPoint1: CGPoint(x: 8.75, y: 1.36), controlPoint2: CGPoint(x: 8.86, y: 1.25))
        return path
    }()
    
    var home: UIBezierPath?
}

struct iPhoneXSMaxDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3.34, y: 0))
        path.addLine(to: CGPoint(x: 18.66, y: 0))
        path.addCurve(to: CGPoint(x: 22, y: 3.34), controlPoint1: CGPoint(x: 20.5, y: 0.01), controlPoint2: CGPoint(x: 21.99, y: 1.5))
        path.addLine(to: CGPoint(x: 22, y: 42.66))
        path.addCurve(to: CGPoint(x: 18.64, y: 46), controlPoint1: CGPoint(x: 21.99, y: 44.51), controlPoint2: CGPoint(x: 20.49, y: 46))
        path.addLine(to: CGPoint(x: 3.36, y: 46))
        path.addCurve(to: CGPoint(x: 0, y: 42.66), controlPoint1: CGPoint(x: 1.51, y: 46), controlPoint2: CGPoint(x: 0.01, y: 44.51))
        path.addLine(to: CGPoint(x: 0, y: 3.34))
        path.addCurve(to: CGPoint(x: 3.34, y: 0), controlPoint1: CGPoint(x: 0.01, y: 1.5), controlPoint2: CGPoint(x: 1.5, y: 0.01))
        return path
    }()
    
    var screen: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 3, y: 1))
        path.addLine(to: CGPoint(x: 4.5, y: 1))
        path.addCurve(to: CGPoint(x: 4.99, y: 1.42), controlPoint1: CGPoint(x: 4.66, y: 1), controlPoint2: CGPoint(x: 4.96, y: 1.14))
        path.addCurve(to: CGPoint(x: 4.99, y: 2.07), controlPoint1: CGPoint(x: 4.99, y: 2.07), controlPoint2: CGPoint(x: 4.99, y: 2.01))
        path.addCurve(to: CGPoint(x: 5.36, y: 2.79), controlPoint1: CGPoint(x: 5.01, y: 2.35), controlPoint2: CGPoint(x: 5.14, y: 2.62))
        path.addCurve(to: CGPoint(x: 6.15, y: 3), controlPoint1: CGPoint(x: 5.58, y: 2.97), controlPoint2: CGPoint(x: 5.87, y: 3.05))
        path.addLine(to: CGPoint(x: 15.86, y: 3))
        path.addCurve(to: CGPoint(x: 16.63, y: 2.78), controlPoint1: CGPoint(x: 16.14, y: 3.04), controlPoint2: CGPoint(x: 16.42, y: 2.96))
        path.addCurve(to: CGPoint(x: 17, y: 2.07), controlPoint1: CGPoint(x: 16.85, y: 2.61), controlPoint2: CGPoint(x: 16.98, y: 2.35))
        path.addCurve(to: CGPoint(x: 17, y: 1.4), controlPoint1: CGPoint(x: 17, y: 2.01), controlPoint2: CGPoint(x: 17, y: 1.43))
        path.addCurve(to: CGPoint(x: 17.49, y: 1), controlPoint1: CGPoint(x: 17, y: 1.12), controlPoint2: CGPoint(x: 17.33, y: 1.02))
        path.addLine(to: CGPoint(x: 19, y: 1))
        path.addCurve(to: CGPoint(x: 21, y: 3), controlPoint1: CGPoint(x: 20.1, y: 1), controlPoint2: CGPoint(x: 21, y: 1.9))
        path.addLine(to: CGPoint(x: 21, y: 43))
        path.addCurve(to: CGPoint(x: 19, y: 45), controlPoint1: CGPoint(x: 21, y: 44.1), controlPoint2: CGPoint(x: 20.1, y: 45))
        path.addLine(to: CGPoint(x: 3, y: 45))
        path.addCurve(to: CGPoint(x: 1, y: 43), controlPoint1: CGPoint(x: 1.9, y: 45), controlPoint2: CGPoint(x: 1, y: 44.1))
        path.addLine(to: CGPoint(x: 1, y: 3))
        path.addCurve(to: CGPoint(x: 3, y: 1), controlPoint1: CGPoint(x: 1, y: 1.9), controlPoint2: CGPoint(x: 1.9, y: 1))
        return path
    }()
    
    var camera: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 13.13, y: 1.13, width: 0.76, height: 0.76))
    
    var speaker: UIBezierPath? = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 9.46, y: 1.26))
        path.addLine(to: CGPoint(x: 12.53, y: 1.26))
        path.addCurve(to: CGPoint(x: 12.74, y: 1.47), controlPoint1: CGPoint(x: 12.65, y: 1.26), controlPoint2: CGPoint(x: 12.74, y: 1.35))
        path.addLine(to: CGPoint(x: 12.74, y: 1.54))
        path.addCurve(to: CGPoint(x: 12.53, y: 1.75), controlPoint1: CGPoint(x: 12.74, y: 1.66), controlPoint2: CGPoint(x: 12.65, y: 1.75))
        path.addLine(to: CGPoint(x: 9.46, y: 1.75))
        path.addCurve(to: CGPoint(x: 9.25, y: 1.54), controlPoint1: CGPoint(x: 9.34, y: 1.75), controlPoint2: CGPoint(x: 9.25, y: 1.66))
        path.addLine(to: CGPoint(x: 9.25, y: 1.47))
        path.addCurve(to: CGPoint(x: 9.46, y: 1.26), controlPoint1: CGPoint(x: 9.25, y: 1.35), controlPoint2: CGPoint(x: 9.34, y: 1.26))
        return path
    }()
    
    var home: UIBezierPath?
}
