//
//  UIDeviceIcon.swift
//  UIDeviceIcon
//
//  Created by theoriginalbit on 27/10/18.
//  Copyright © 2018 theoriginalbit. All rights reserved.
//

import UIKit
import UIDeviceModel
import SVGPath

public enum DeviceIconError: Error {
    case unsupportedDevice(UIDeviceModel)
}

public enum UIDeviceIcon {
    case deviceIcon(CAShapeLayer)
    case unknown(String)
    case unsupported(UIDeviceModel)
}

extension UIDeviceIcon {

    static var current: UIDeviceIcon {
        return mapFromModel(model: UIDevice.current.deviceModel)
    }
    
    static private func mapFromModel(model: UIDeviceModel) -> UIDeviceIcon {
        let actualModel = model.unwrapIfSimulator
        let path: UIBezierPath
        
        switch actualModel {
        case .iPad:
            path = iPad
        case .iPad2, .iPad3, .iPad4, .iPad5, .iPad6:
            path = iPad2
        case .iPadAir, .iPadAir2, .iPadPro9Inch:
            path = iPadAir
        case .iPadPro10Inch:
            path = iPadPro10Inch
        case .iPadPro12Inch, .iPadPro12Inch2:
            path = iPadPro12Inch
        case .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4:
            path = iPadMini
        case .iPhone5s:
            path = iPhone5s
        case .iPhoneSE:
            path = iPhoneSE
        case .iPhone6, .iPhone6s, .iPhone7, .iPhone8:
            path = iPhone6
        case .iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
            path = iPhone6Plus
        case .iPhoneX, .iPhoneXS:
            path = iPhoneX
        case .iPhoneXSMax:
            path = iPhoneXSMax
        case .iPhoneXR:
            path = iPhoneXR
        case .iPodTouch, .iPodTouch2, .iPodTouch3, .iPodTouch4, .iPodTouch5, .iPodTouch6:
            path = iPodTouch
        
        // all cases we don't have icons
            
        case .iPhone, .iPhone3G, .iPhone3GS, .iPhone4, .iPhone4s, .iPhone5, .iPhone5c:
            return .unsupported(model)
        case .simulator(_):
            fatalError("🤥") // we just unwrapped it!
        case .unknown(let device):
            return .unknown(device)
        }
        
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.fillColor = UIColor.black.cgColor
        return .deviceIcon(layer)
    }
    
    static private var iPad: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 0.37, y: 0.36))
        device.addCurve(to: CGPoint(x: 1.26, y: 0), controlPoint1: CGPoint(x: 0.6, y: 0.13), controlPoint2: CGPoint(x: 0.92, y: 0))
        device.addLine(to: CGPoint(x: 26.74, y: 0))
        device.addCurve(to: CGPoint(x: 27.63, y: 0.36), controlPoint1: CGPoint(x: 27.08, y: 0), controlPoint2: CGPoint(x: 27.4, y: 0.13))
        device.addCurve(to: CGPoint(x: 28, y: 1.25), controlPoint1: CGPoint(x: 27.87, y: 0.6), controlPoint2: CGPoint(x: 28, y: 0.92))
        device.addLine(to: CGPoint(x: 28, y: 38.75))
        device.addCurve(to: CGPoint(x: 27.63, y: 39.64), controlPoint1: CGPoint(x: 28, y: 39.08), controlPoint2: CGPoint(x: 27.87, y: 39.4))
        device.addCurve(to: CGPoint(x: 26.74, y: 40), controlPoint1: CGPoint(x: 27.4, y: 39.87), controlPoint2: CGPoint(x: 27.08, y: 40))
        device.addLine(to: CGPoint(x: 1.26, y: 40))
        device.addCurve(to: CGPoint(x: 0.37, y: 39.64), controlPoint1: CGPoint(x: 0.92, y: 40), controlPoint2: CGPoint(x: 0.6, y: 39.87))
        device.addCurve(to: CGPoint(x: 0, y: 38.75), controlPoint1: CGPoint(x: 0.13, y: 39.4), controlPoint2: CGPoint(x: 0, y: 39.08))
        device.addLine(to: CGPoint(x: 0, y: 1.25))
        device.addCurve(to: CGPoint(x: 0.37, y: 0.36), controlPoint1: CGPoint(x: 0, y: 0.92), controlPoint2: CGPoint(x: 0.13, y: 0.6))
        
        let home = UIBezierPath(ovalIn: CGRect(x: 13, y: 37, width: 2, height: 2))
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 2, y: 4, width: 24, height: 32))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private var iPad2: UIBezierPath = {
        let device = iPad
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 13.5, y: 1.5, width: 1, height: 1))
        device.append(camera.reversing())
        
        return device
    }()
    
    static private var iPadAir: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 1.07, y: 0))
        device.addLine(to: CGPoint(x: 24.92, y: 0))
        device.addCurve(to: CGPoint(x: 26, y: 1.15), controlPoint1: CGPoint(x: 25.62, y: 0), controlPoint2: CGPoint(x: 26, y: 0.45))
        device.addLine(to: CGPoint(x: 26, y: 36.35))
        device.addCurve(to: CGPoint(x: 24.93, y: 38), controlPoint1: CGPoint(x: 26, y: 37.05), controlPoint2: CGPoint(x: 25.62, y: 38))
        device.addLine(to: CGPoint(x: 1.07, y: 38))
        device.addCurve(to: CGPoint(x: 0, y: 36.35), controlPoint1: CGPoint(x: 0.38, y: 38), controlPoint2: CGPoint(x: 0, y: 37.05))
        device.addLine(to: CGPoint(x: 0, y: 1.15))
        device.addCurve(to: CGPoint(x: 1.07, y: 0), controlPoint1: CGPoint(x: 0, y: 0.45), controlPoint2: CGPoint(x: 0.38, y: 0))
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 12.5, y: 1.34, width: 1, height: 1))
        device.append(camera.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 12.01, y: 35.03, width: 1.99, height: 1.99))
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 2, y: 3.5, width: 22, height: 30.5))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private var iPadPro10Inch: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 1.23, y: 0))
        device.addLine(to: CGPoint(x: 26.76, y: 0))
        device.addCurve(to: CGPoint(x: 28, y: 1.24), controlPoint1: CGPoint(x: 27.45, y: 0), controlPoint2: CGPoint(x: 28, y: 0.54))
        device.addLine(to: CGPoint(x: 28, y: 41.76))
        device.addCurve(to: CGPoint(x: 26.76, y: 43), controlPoint1: CGPoint(x: 28, y: 42.46), controlPoint2: CGPoint(x: 27.44, y: 43))
        device.addLine(to: CGPoint(x: 1.23, y: 43))
        device.addCurve(to: CGPoint(x: 0, y: 41.76), controlPoint1: CGPoint(x: 0.55, y: 43), controlPoint2: CGPoint(x: 0, y: 42.46))
        device.addLine(to: CGPoint(x: 0, y: 1.24))
        device.addCurve(to: CGPoint(x: 1.23, y: 0), controlPoint1: CGPoint(x: 0, y: 0.54), controlPoint2: CGPoint(x: 0.55, y: 0))
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 13.38, y: 1.38, width: 1.24, height: 1.24))
        device.append(camera.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 13.02, y: 40, width: 2, height: 2))
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 2, y: 4, width: 24, height: 34.99))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private var iPadPro12Inch: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 1.49, y: 0))
        device.addLine(to: CGPoint(x: 32.49, y: 0))
        device.addCurve(to: CGPoint(x: 34, y: 1.38), controlPoint1: CGPoint(x: 33.33, y: 0), controlPoint2: CGPoint(x: 34, y: 0.6))
        device.addLine(to: CGPoint(x: 34, y: 46.62))
        device.addCurve(to: CGPoint(x: 32.49, y: 48), controlPoint1: CGPoint(x: 34, y: 47.4), controlPoint2: CGPoint(x: 33.32, y: 48))
        device.addLine(to: CGPoint(x: 1.49, y: 48))
        device.addCurve(to: CGPoint(x: 0, y: 46.62), controlPoint1: CGPoint(x: 0.67, y: 48), controlPoint2: CGPoint(x: 0, y: 47.4))
        device.addLine(to: CGPoint(x: 0, y: 1.38))
        device.addCurve(to: CGPoint(x: 1.49, y: 0), controlPoint1: CGPoint(x: 0, y: 0.6), controlPoint2: CGPoint(x: 0.67, y: 0))
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 16.25, y: 1.25, width: 1.5, height: 1.5))
        device.append(camera.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 16, y: 44.99, width: 2, height: 2))
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 2, y: 4, width: 30, height: 39.99))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private var iPadMini: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 1.27, y: 0))
        device.addLine(to: CGPoint(x: 20.74, y: 0))
        device.addCurve(to: CGPoint(x: 22, y: 1.26), controlPoint1: CGPoint(x: 21.42, y: 0.02), controlPoint2: CGPoint(x: 21.98, y: 0.57))
        device.addLine(to: CGPoint(x: 22, y: 29.74))
        device.addCurve(to: CGPoint(x: 20.74, y: 31), controlPoint1: CGPoint(x: 21.97, y: 30.43), controlPoint2: CGPoint(x: 21.42, y: 30.98))
        device.addLine(to: CGPoint(x: 1.27, y: 31))
        device.addCurve(to: CGPoint(x: 0, y: 29.8), controlPoint1: CGPoint(x: 0.59, y: 31), controlPoint2: CGPoint(x: 0.03, y: 30.48))
        device.addLine(to: CGPoint(x: 0.01, y: 1.26))
        device.addCurve(to: CGPoint(x: 1.27, y: 0), controlPoint1: CGPoint(x: 0.03, y: 0.57), controlPoint2: CGPoint(x: 0.58, y: 0.02))
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 10.51, y: 1.25, width: 0.86, height: 0.86))
        device.append(camera.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 10, y: 28.5, width: 2, height: 2))
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 2, y: 3, width: 18, height: 25))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private let iPhone5s: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 3, y: 0))
        device.addLine(to: CGPoint(x: 14.06, y: 0))
        device.addCurve(to: CGPoint(x: 17, y: 2.94), controlPoint1: CGPoint(x: 15.82, y: 0), controlPoint2: CGPoint(x: 17, y: 1.21))
        device.addLine(to: CGPoint(x: 17, y: 32.07))
        device.addCurve(to: CGPoint(x: 14.06, y: 35), controlPoint1: CGPoint(x: 17, y: 33.8), controlPoint2: CGPoint(x: 15.79, y: 35))
        device.addLine(to: CGPoint(x: 3, y: 35))
        device.addCurve(to: CGPoint(x: 0, y: 32.07), controlPoint1: CGPoint(x: 1.23, y: 35), controlPoint2: CGPoint(x: 0, y: 33.82))
        device.addLine(to: CGPoint(x: 0, y: 2.94))
        device.addCurve(to: CGPoint(x: 3, y: 0), controlPoint1: CGPoint(x: 0, y: 1.18), controlPoint2: CGPoint(x: 1.23, y: 0))
        
        let speaker = UIBezierPath(rect: CGRect(x: 7, y: 2, width: 3, height: 0.5))
        device.append(speaker.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 7, y: 31.5, width: 3, height: 3))
        let homeInner = UIBezierPath(ovalIn: CGRect(x: 7.5, y: 32, width: 2, height: 2))
        home.append(homeInner.reversing())
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 1, y: 4, width: 15, height: 27))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private let iPhoneSE: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 3, y: 0))
        device.addLine(to: CGPoint(x: 14.06, y: 0))
        device.addCurve(to: CGPoint(x: 17, y: 2.93), controlPoint1: CGPoint(x: 15.82, y: 0), controlPoint2: CGPoint(x: 17, y: 1.21))
        device.addLine(to: CGPoint(x: 17, y: 32.07))
        device.addCurve(to: CGPoint(x: 14.06, y: 35), controlPoint1: CGPoint(x: 17, y: 33.8), controlPoint2: CGPoint(x: 15.79, y: 35))
        device.addLine(to: CGPoint(x: 3, y: 35))
        device.addCurve(to: CGPoint(x: 0, y: 32.06), controlPoint1: CGPoint(x: 1.23, y: 35), controlPoint2: CGPoint(x: 0, y: 33.82))
        device.addLine(to: CGPoint(x: 0, y: 2.93))
        device.addCurve(to: CGPoint(x: 3, y: 0), controlPoint1: CGPoint(x: 0, y: 1.18), controlPoint2: CGPoint(x: 1.23, y: 0))
        
        let speaker = UIBezierPath(rect: CGRect(x: 7, y: 2, width: 3, height: 0.5))
        device.append(speaker.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 7.5, y: 32, width: 2, height: 2))
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 1, y: 4, width: 15, height: 27))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private let iPhone6: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 2.87, y: 0))
        device.addLine(to: CGPoint(x: 16.11, y: 0))
        device.addCurve(to: CGPoint(x: 19, y: 2.83), controlPoint1: CGPoint(x: 17.7, y: 0), controlPoint2: CGPoint(x: 19, y: 1.28))
        device.addLine(to: CGPoint(x: 19, y: 35.15))
        device.addCurve(to: CGPoint(x: 16.11, y: 38), controlPoint1: CGPoint(x: 19, y: 36.71), controlPoint2: CGPoint(x: 17.7, y: 38))
        device.addLine(to: CGPoint(x: 2.87, y: 38))
        device.addCurve(to: CGPoint(x: 0, y: 35.15), controlPoint1: CGPoint(x: 1.28, y: 38), controlPoint2: CGPoint(x: 0, y: 36.71))
        device.addLine(to: CGPoint(x: 0, y: 2.83))
        device.addCurve(to: CGPoint(x: 2.87, y: 0), controlPoint1: CGPoint(x: 0, y: 1.28), controlPoint2: CGPoint(x: 1.28, y: 0))
        
        let speaker = UIBezierPath(rect: CGRect(x: 8.2, y: 2.11, width: 2.6, height: 0.42))
        device.append(speaker.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 7.99, y: 34.41, width: 3.02, height: 2.96))
        let homeInner = UIBezierPath(ovalIn: CGRect(x: 8.64, y: 35.04, width: 1.73, height: 1.69))
        home.append(homeInner.reversing())
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 0.86, y: 4.22, width: 17.27, height: 29.56))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private let iPhone6Plus: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 3.33, y: 0))
        device.addLine(to: CGPoint(x: 18.65, y: 0))
        device.addCurve(to: CGPoint(x: 22, y: 3.35), controlPoint1: CGPoint(x: 20.49, y: 0), controlPoint2: CGPoint(x: 22, y: 1.51))
        device.addLine(to: CGPoint(x: 22, y: 41.63))
        device.addCurve(to: CGPoint(x: 18.65, y: 45), controlPoint1: CGPoint(x: 22, y: 43.48), controlPoint2: CGPoint(x: 20.49, y: 45))
        device.addLine(to: CGPoint(x: 3.33, y: 45))
        device.addCurve(to: CGPoint(x: 0, y: 41.63), controlPoint1: CGPoint(x: 1.48, y: 45), controlPoint2: CGPoint(x: 0, y: 43.48))
        device.addLine(to: CGPoint(x: 0, y: 3.35))
        device.addCurve(to: CGPoint(x: 3.33, y: 0), controlPoint1: CGPoint(x: 0, y: 1.51), controlPoint2: CGPoint(x: 1.48, y: 0))
        
        let speaker = UIBezierPath(rect: CGRect(x: 9.5, y: 2.5, width: 3, height: 0.5))
        device.append(speaker.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 9.25, y: 40.75, width: 3.5, height: 3.5))
        let homeInner = UIBezierPath(ovalIn: CGRect(x: 10, y: 41.5, width: 2, height: 2))
        home.append(homeInner.reversing())
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 1, y: 5, width: 20, height: 35))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private let iPhoneX: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 2.99, y: 0))
        device.addLine(to: CGPoint(x: 17.01, y: 0))
        device.addCurve(to: CGPoint(x: 20, y: 2.99), controlPoint1: CGPoint(x: 18.66, y: 0), controlPoint2: CGPoint(x: 20, y: 1.35))
        device.addLine(to: CGPoint(x: 20, y: 38.01))
        device.addCurve(to: CGPoint(x: 17, y: 41), controlPoint1: CGPoint(x: 20, y: 39.66), controlPoint2: CGPoint(x: 18.64, y: 41))
        device.addLine(to: CGPoint(x: 3, y: 41))
        device.addCurve(to: CGPoint(x: 0, y: 38.01), controlPoint1: CGPoint(x: 1.36, y: 41), controlPoint2: CGPoint(x: 0, y: 39.66))
        device.addLine(to: CGPoint(x: 0, y: 2.99))
        device.addCurve(to: CGPoint(x: 2.99, y: 0), controlPoint1: CGPoint(x: 0, y: 1.34), controlPoint2: CGPoint(x: 1.34, y: 0))
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 12.22, y: 1.3, width: 0.76, height: 0.76))
        device.append(camera.reversing())
        
        let speaker = UIBezierPath()
        speaker.move(to: CGPoint(x: 8.47, y: 1.49))
        speaker.addLine(to: CGPoint(x: 11.21, y: 1.49))
        speaker.addCurve(to: CGPoint(x: 11.4, y: 1.67), controlPoint1: CGPoint(x: 11.39, y: 1.49), controlPoint2: CGPoint(x: 11.4, y: 1.63))
        speaker.addLine(to: CGPoint(x: 11.4, y: 1.7))
        speaker.addCurve(to: CGPoint(x: 11.21, y: 1.88), controlPoint1: CGPoint(x: 11.4, y: 1.74), controlPoint2: CGPoint(x: 11.39, y: 1.88))
        speaker.addLine(to: CGPoint(x: 8.47, y: 1.88))
        speaker.addCurve(to: CGPoint(x: 8.28, y: 1.7), controlPoint1: CGPoint(x: 8.29, y: 1.88), controlPoint2: CGPoint(x: 8.28, y: 1.74))
        speaker.addLine(to: CGPoint(x: 8.28, y: 1.67))
        speaker.addCurve(to: CGPoint(x: 8.47, y: 1.49), controlPoint1: CGPoint(x: 8.28, y: 1.63), controlPoint2: CGPoint(x: 8.29, y: 1.49))
        device.append(speaker.reversing())
        
        let screen = UIBezierPath()
        screen.move(to: CGPoint(x: 2.8, y: 1))
        screen.addLine(to: CGPoint(x: 4.56, y: 1))
        screen.addCurve(to: CGPoint(x: 5, y: 1.36), controlPoint1: CGPoint(x: 4.71, y: 1.02), controlPoint2: CGPoint(x: 4.97, y: 1.11))
        screen.addCurve(to: CGPoint(x: 5, y: 2.17), controlPoint1: CGPoint(x: 5, y: 1.38), controlPoint2: CGPoint(x: 4.99, y: 2.11))
        screen.addCurve(to: CGPoint(x: 6.02, y: 3), controlPoint1: CGPoint(x: 5.07, y: 2.56), controlPoint2: CGPoint(x: 5.3, y: 3))
        screen.addLine(to: CGPoint(x: 13.98, y: 3))
        screen.addCurve(to: CGPoint(x: 15, y: 2.17), controlPoint1: CGPoint(x: 14.71, y: 3), controlPoint2: CGPoint(x: 14.94, y: 2.56))
        screen.addCurve(to: CGPoint(x: 15, y: 1.36), controlPoint1: CGPoint(x: 15.01, y: 2.11), controlPoint2: CGPoint(x: 15, y: 1.39))
        screen.addCurve(to: CGPoint(x: 15.44, y: 1), controlPoint1: CGPoint(x: 15.03, y: 1.11), controlPoint2: CGPoint(x: 15.29, y: 1.02))
        screen.addLine(to: CGPoint(x: 17.2, y: 1))
        screen.addCurve(to: CGPoint(x: 19, y: 2.8), controlPoint1: CGPoint(x: 18.19, y: 1), controlPoint2: CGPoint(x: 19, y: 1.81))
        screen.addLine(to: CGPoint(x: 19, y: 38.2))
        screen.addCurve(to: CGPoint(x: 17.2, y: 40), controlPoint1: CGPoint(x: 19, y: 39.19), controlPoint2: CGPoint(x: 18.19, y: 40))
        screen.addLine(to: CGPoint(x: 2.8, y: 40))
        screen.addCurve(to: CGPoint(x: 1, y: 38.2), controlPoint1: CGPoint(x: 1.81, y: 40), controlPoint2: CGPoint(x: 1, y: 39.19))
        screen.addLine(to: CGPoint(x: 1, y: 2.8))
        screen.addCurve(to: CGPoint(x: 2.8, y: 1), controlPoint1: CGPoint(x: 1, y: 1.81), controlPoint2: CGPoint(x: 1.81, y: 1))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private let iPhoneXR: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 3.18, y: 0))
        device.addLine(to: CGPoint(x: 17.82, y: 0))
        device.addCurve(to: CGPoint(x: 21, y: 3.18), controlPoint1: CGPoint(x: 19.57, y: 0.01), controlPoint2: CGPoint(x: 20.99, y: 1.43))
        device.addLine(to: CGPoint(x: 21, y: 40.82))
        device.addCurve(to: CGPoint(x: 17.81, y: 44), controlPoint1: CGPoint(x: 20.99, y: 42.58), controlPoint2: CGPoint(x: 19.57, y: 43.99))
        device.addLine(to: CGPoint(x: 3.19, y: 44))
        device.addCurve(to: CGPoint(x: 0, y: 40.82), controlPoint1: CGPoint(x: 1.43, y: 43.99), controlPoint2: CGPoint(x: 0.01, y: 42.58))
        device.addLine(to: CGPoint(x: 0, y: 3.18))
        device.addCurve(to: CGPoint(x: 3.18, y: 0), controlPoint1: CGPoint(x: 0.01, y: 1.43), controlPoint2: CGPoint(x: 1.43, y: 0.01))
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 13.13, y: 1.13, width: 0.76, height: 0.76))
        device.append(camera.reversing())
        
        let speaker = UIBezierPath()
        speaker.move(to: CGPoint(x: 9, y: 1.25))
        speaker.addLine(to: CGPoint(x: 12, y: 1.25))
        speaker.addCurve(to: CGPoint(x: 12.25, y: 1.5), controlPoint1: CGPoint(x: 12.14, y: 1.25), controlPoint2: CGPoint(x: 12.25, y: 1.36))
        speaker.addCurve(to: CGPoint(x: 12, y: 1.75), controlPoint1: CGPoint(x: 12.25, y: 1.64), controlPoint2: CGPoint(x: 12.14, y: 1.75))
        speaker.addLine(to: CGPoint(x: 9, y: 1.75))
        speaker.addCurve(to: CGPoint(x: 8.75, y: 1.5), controlPoint1: CGPoint(x: 8.86, y: 1.75), controlPoint2: CGPoint(x: 8.75, y: 1.64))
        speaker.addCurve(to: CGPoint(x: 9, y: 1.25), controlPoint1: CGPoint(x: 8.75, y: 1.36), controlPoint2: CGPoint(x: 8.86, y: 1.25))
        device.append(speaker.reversing())
        
        let screen = UIBezierPath()
        screen.move(to: CGPoint(x: 2.92, y: 1))
        screen.addLine(to: CGPoint(x: 4.55, y: 1))
        screen.addCurve(to: CGPoint(x: 5, y: 1.26), controlPoint1: CGPoint(x: 4.7, y: 1), controlPoint2: CGPoint(x: 5, y: 1))
        screen.addCurve(to: CGPoint(x: 5, y: 2.11), controlPoint1: CGPoint(x: 5, y: 1.26), controlPoint2: CGPoint(x: 5, y: 2.05))
        screen.addCurve(to: CGPoint(x: 6.09, y: 3.01), controlPoint1: CGPoint(x: 5.05, y: 2.66), controlPoint2: CGPoint(x: 5.54, y: 3.06))
        screen.addLine(to: CGPoint(x: 14.92, y: 3.01))
        screen.addCurve(to: CGPoint(x: 16, y: 2.13), controlPoint1: CGPoint(x: 15.46, y: 3.06), controlPoint2: CGPoint(x: 15.94, y: 2.67))
        screen.addCurve(to: CGPoint(x: 16, y: 1.26), controlPoint1: CGPoint(x: 16, y: 2.07), controlPoint2: CGPoint(x: 16, y: 1.28))
        screen.addCurve(to: CGPoint(x: 16.47, y: 1), controlPoint1: CGPoint(x: 16, y: 0.99), controlPoint2: CGPoint(x: 16.32, y: 1.03))
        screen.addLine(to: CGPoint(x: 18.08, y: 1))
        screen.addCurve(to: CGPoint(x: 20, y: 3), controlPoint1: CGPoint(x: 19.15, y: 1.04), controlPoint2: CGPoint(x: 20, y: 1.93))
        screen.addLine(to: CGPoint(x: 20, y: 41.08))
        screen.addCurve(to: CGPoint(x: 19.44, y: 42.44), controlPoint1: CGPoint(x: 20, y: 41.59), controlPoint2: CGPoint(x: 19.8, y: 42.08))
        screen.addCurve(to: CGPoint(x: 18.08, y: 43), controlPoint1: CGPoint(x: 19.08, y: 42.8), controlPoint2: CGPoint(x: 18.59, y: 43))
        screen.addLine(to: CGPoint(x: 2.92, y: 43))
        screen.addCurve(to: CGPoint(x: 1, y: 41.08), controlPoint1: CGPoint(x: 1.86, y: 43), controlPoint2: CGPoint(x: 1, y: 42.14))
        screen.addLine(to: CGPoint(x: 1, y: 3))
        screen.addCurve(to: CGPoint(x: 2.92, y: 1), controlPoint1: CGPoint(x: 1, y: 1.93), controlPoint2: CGPoint(x: 1.85, y: 1.04))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private let iPhoneXSMax: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 3.34, y: 0))
        device.addLine(to: CGPoint(x: 18.66, y: 0))
        device.addCurve(to: CGPoint(x: 22, y: 3.34), controlPoint1: CGPoint(x: 20.5, y: 0.01), controlPoint2: CGPoint(x: 21.99, y: 1.5))
        device.addLine(to: CGPoint(x: 22, y: 42.66))
        device.addCurve(to: CGPoint(x: 18.64, y: 46), controlPoint1: CGPoint(x: 21.99, y: 44.51), controlPoint2: CGPoint(x: 20.49, y: 46))
        device.addLine(to: CGPoint(x: 3.36, y: 46))
        device.addCurve(to: CGPoint(x: 0, y: 42.66), controlPoint1: CGPoint(x: 1.51, y: 46), controlPoint2: CGPoint(x: 0.01, y: 44.51))
        device.addLine(to: CGPoint(x: 0, y: 3.34))
        device.addCurve(to: CGPoint(x: 3.34, y: 0), controlPoint1: CGPoint(x: 0.01, y: 1.5), controlPoint2: CGPoint(x: 1.5, y: 0.01))
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 13.13, y: 1.13, width: 0.76, height: 0.76))
        device.append(camera.reversing())
        
        let speaker = UIBezierPath()
        speaker.move(to: CGPoint(x: 9.46, y: 1.26))
        speaker.addLine(to: CGPoint(x: 12.53, y: 1.26))
        speaker.addCurve(to: CGPoint(x: 12.74, y: 1.47), controlPoint1: CGPoint(x: 12.65, y: 1.26), controlPoint2: CGPoint(x: 12.74, y: 1.35))
        speaker.addLine(to: CGPoint(x: 12.74, y: 1.54))
        speaker.addCurve(to: CGPoint(x: 12.53, y: 1.75), controlPoint1: CGPoint(x: 12.74, y: 1.66), controlPoint2: CGPoint(x: 12.65, y: 1.75))
        speaker.addLine(to: CGPoint(x: 9.46, y: 1.75))
        speaker.addCurve(to: CGPoint(x: 9.25, y: 1.54), controlPoint1: CGPoint(x: 9.34, y: 1.75), controlPoint2: CGPoint(x: 9.25, y: 1.66))
        speaker.addLine(to: CGPoint(x: 9.25, y: 1.47))
        speaker.addCurve(to: CGPoint(x: 9.46, y: 1.26), controlPoint1: CGPoint(x: 9.25, y: 1.35), controlPoint2: CGPoint(x: 9.34, y: 1.26))
        device.append(speaker.reversing())
        
        let screen = UIBezierPath()
        screen.move(to: CGPoint(x: 3, y: 1))
        screen.addLine(to: CGPoint(x: 4.5, y: 1))
        screen.addCurve(to: CGPoint(x: 4.99, y: 1.42), controlPoint1: CGPoint(x: 4.66, y: 1), controlPoint2: CGPoint(x: 4.96, y: 1.14))
        screen.addCurve(to: CGPoint(x: 4.99, y: 2.07), controlPoint1: CGPoint(x: 4.99, y: 2.07), controlPoint2: CGPoint(x: 4.99, y: 2.01))
        screen.addCurve(to: CGPoint(x: 5.36, y: 2.79), controlPoint1: CGPoint(x: 5.01, y: 2.35), controlPoint2: CGPoint(x: 5.14, y: 2.62))
        screen.addCurve(to: CGPoint(x: 6.15, y: 3), controlPoint1: CGPoint(x: 5.58, y: 2.97), controlPoint2: CGPoint(x: 5.87, y: 3.05))
        screen.addLine(to: CGPoint(x: 15.86, y: 3))
        screen.addCurve(to: CGPoint(x: 16.63, y: 2.78), controlPoint1: CGPoint(x: 16.14, y: 3.04), controlPoint2: CGPoint(x: 16.42, y: 2.96))
        screen.addCurve(to: CGPoint(x: 17, y: 2.07), controlPoint1: CGPoint(x: 16.85, y: 2.61), controlPoint2: CGPoint(x: 16.98, y: 2.35))
        screen.addCurve(to: CGPoint(x: 17, y: 1.4), controlPoint1: CGPoint(x: 17, y: 2.01), controlPoint2: CGPoint(x: 17, y: 1.43))
        screen.addCurve(to: CGPoint(x: 17.49, y: 1), controlPoint1: CGPoint(x: 17, y: 1.12), controlPoint2: CGPoint(x: 17.33, y: 1.02))
        screen.addLine(to: CGPoint(x: 19, y: 1))
        screen.addCurve(to: CGPoint(x: 21, y: 3), controlPoint1: CGPoint(x: 20.1, y: 1), controlPoint2: CGPoint(x: 21, y: 1.9))
        screen.addLine(to: CGPoint(x: 21, y: 43))
        screen.addCurve(to: CGPoint(x: 19, y: 45), controlPoint1: CGPoint(x: 21, y: 44.1), controlPoint2: CGPoint(x: 20.1, y: 45))
        screen.addLine(to: CGPoint(x: 3, y: 45))
        screen.addCurve(to: CGPoint(x: 1, y: 43), controlPoint1: CGPoint(x: 1.9, y: 45), controlPoint2: CGPoint(x: 1, y: 44.1))
        screen.addLine(to: CGPoint(x: 1, y: 3))
        screen.addCurve(to: CGPoint(x: 3, y: 1), controlPoint1: CGPoint(x: 1, y: 1.9), controlPoint2: CGPoint(x: 1.9, y: 1))
        device.append(screen.reversing())
        
        return device
    }()
    
    static private let iPodTouch: UIBezierPath = {
        let device = UIBezierPath()
        device.move(to: CGPoint(x: 0, y: 2.94))
        device.addCurve(to: CGPoint(x: 0.85, y: 0.8), controlPoint1: CGPoint(x: -0.03, y: 2.14), controlPoint2: CGPoint(x: 0.28, y: 1.36))
        device.addCurve(to: CGPoint(x: 3, y: 0.01), controlPoint1: CGPoint(x: 1.42, y: 0.24), controlPoint2: CGPoint(x: 2.2, y: -0.03))
        device.addLine(to: CGPoint(x: 14.06, y: 0.01))
        device.addCurve(to: CGPoint(x: 16.18, y: 0.82), controlPoint1: CGPoint(x: 14.85, y: -0.03), controlPoint2: CGPoint(x: 15.62, y: 0.24))
        device.addCurve(to: CGPoint(x: 17, y: 2.94), controlPoint1: CGPoint(x: 16.74, y: 1.38), controlPoint2: CGPoint(x: 17.04, y: 2.14))
        device.addLine(to: CGPoint(x: 17, y: 32.08))
        device.addCurve(to: CGPoint(x: 16.18, y: 34.19), controlPoint1: CGPoint(x: 17.04, y: 32.86), controlPoint2: CGPoint(x: 16.74, y: 33.63))
        device.addCurve(to: CGPoint(x: 14.06, y: 35.01), controlPoint1: CGPoint(x: 15.62, y: 34.75), controlPoint2: CGPoint(x: 14.85, y: 35.04))
        device.addLine(to: CGPoint(x: 3, y: 35.01))
        device.addCurve(to: CGPoint(x: 0.85, y: 34.21), controlPoint1: CGPoint(x: 2.2, y: 35.06), controlPoint2: CGPoint(x: 1.42, y: 34.77))
        device.addCurve(to: CGPoint(x: 0, y: 32.08), controlPoint1: CGPoint(x: 0.28, y: 33.65), controlPoint2: CGPoint(x: -0.03, y: 32.87))
        
        let camera = UIBezierPath(ovalIn: CGRect(x: 8, y: 2.02, width: 1, height: 1))
        device.append(camera.reversing())
        
        let home = UIBezierPath(ovalIn: CGRect(x: 7.52, y: 31.01, width: 2, height: 2))
        device.append(home.reversing())
        
        let screen = UIBezierPath(rect: CGRect(x: 1, y: 5.01, width: 15, height: 25))
        device.append(screen.reversing())
        
        return device
    }()
    
}
