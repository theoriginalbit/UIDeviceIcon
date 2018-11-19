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
    
    static private var iPad = UIBezierPath(svgPath: "M26.743,-9.4802638e-16 L1.257,-9.4802638e-16 C0.923454879,-0.00458433095 0.602129921,0.125410923 0.365597946,0.360625695 C0.129065972,0.595840467 -0.00272163669,0.916434479 3.88578059e-16,1.25 L3.88578059e-16,38.75 C-0.00244638458,39.0834822 0.129429285,39.4039153 0.365900699,39.6390699 C0.602372113,39.8742244 0.923536618,40.0043086 1.257,40 L26.743,40 C27.0764634,40.0043086 27.3976279,39.8742244 27.6340993,39.6390699 C27.8705707,39.4039153 28.0024464,39.0834822 28,38.75 L28,1.25 C28.0027216,0.916434479 27.870934,0.595840467 27.6344021,0.360625695 C27.3978701,0.125410923 27.0765451,-0.00458433095 26.743,-9.4802638e-16 Z M14,39 C13.4477153,39 13,38.5522847 13,38 C13,37.4477153 13.4477153,37 14,37 C14.5522847,37 15,37.4477153 15,38 C15,38.5522847 14.5522847,39 14,39 Z M26,36 L2,36 L2,4 L26,4 L26,36 Z")
    
    static private var iPad2 = UIBezierPath(svgPath: "M26.743,-9.4802638e-16 L1.257,-9.4802638e-16 C0.923454879,-0.00458433095 0.602129921,0.125410923 0.365597946,0.360625695 C0.129065972,0.595840467 -0.00272163669,0.916434479 3.88578059e-16,1.25 L3.88578059e-16,38.75 C-0.00244638458,39.0834822 0.129429285,39.4039153 0.365900699,39.6390699 C0.602372113,39.8742244 0.923536618,40.0043086 1.257,40 L26.743,40 C27.0764634,40.0043086 27.3976279,39.8742244 27.6340993,39.6390699 C27.8705707,39.4039153 28.0024464,39.0834822 28,38.75 L28,1.25 C28.0027216,0.916434479 27.870934,0.595840467 27.6344021,0.360625695 C27.3978701,0.125410923 27.0765451,-0.00458433095 26.743,-9.4802638e-16 Z M14,1.5 C14.2761424,1.5 14.5,1.72385763 14.5,2 C14.5,2.27614237 14.2761424,2.5 14,2.5 C13.7238576,2.5 13.5,2.27614237 13.5,2 C13.5,1.72385763 13.7238576,1.5 14,1.5 Z M14,39 C13.4477153,39 13,38.5522847 13,38 C13,37.4477153 13.4477153,37 14,37 C14.5522847,37 15,37.4477153 15,38 C15,38.5522847 14.5522847,39 14,39 Z M26,36 L2,36 L2,4 L26,4 L26,36 Z")
    
    static private var iPadAir = UIBezierPath(svgPath: "M24.933,0 L24.923,0 L1.077,0 L1.067,0 C0.378,0 0,0.447 0,1.154 L0,7.875 L0,36.347 C0,37.053 0.378,38 1.067,38 L24.933,38 C25.622,38 26,37.053 26,36.346 L26,7.874 L26,1.153 C26,0.447 25.622,0 24.933,0 Z M13,1.343 C13.268,1.343 13.49,1.567 13.49,1.838 C13.49,2.109 13.268,2.333 13,2.333 C12.732,2.333 12.51,2.109 12.51,1.838 C12.51,1.567 12.732,1.343 13,1.343 Z M13.005,37.019 C12.457,37.019 12.009,36.571 12.009,36.023 C12.009,35.475 12.457,35.027 13.005,35.027 C13.553,35.027 14.001,35.475 14.001,36.023 C14,36.571 13.552,37.019 13.005,37.019 Z M24,34 L2,34 L2,3.5 L24,3.5 L24,34 Z")
    
    static private var iPadPro10Inch = UIBezierPath(svgPath: "M26.76,-1.0658141e-14 L1.23,-1.0658141e-14 C0.55,-1.0658141e-14 -7.10542736e-15,0.539874448 -7.10542736e-15,1.23971169 L-7.10542736e-15,41.7602883 C-7.10542736e-15,42.4601256 0.55,43 1.23,43 L26.76,43 C27.44,43 28,42.4601256 28,41.7602883 L28,1.23971169 C28,0.539874448 27.45,-1.0658141e-14 26.76,-1.0658141e-14 Z M14,1.37967914 C14.34,1.37967914 14.62,1.65961404 14.62,1.99953499 C14.62,2.33945594 14.34,2.61939084 14,2.61939084 C13.66,2.61939084 13.38,2.33945594 13.38,1.99953499 C13.38,1.65961404 13.66,1.37967914 14,1.37967914 Z M14.02,42.0002325 C13.47,42.0002325 13.02,41.5403395 13.02,41.000465 C13.02,40.4605906 13.47,40.0006975 14.02,40.0006975 C14.57,40.0006975 15.02,40.4605906 15.02,41.000465 C15.01,41.5403395 14.56,42.0002325 14.02,42.0002325 Z M26,38.9909323 L2,38.9909323 L2,3.99906998 L26,3.99906998 L26,38.9909323 Z")
    
    static private var iPadPro12Inch = UIBezierPath(svgPath: "M32.4942857,-1.0658141e-14 L1.49357143,-1.0658141e-14 C0.667857143,-1.0658141e-14 -7.10542736e-15,0.602650546 -7.10542736e-15,1.38386422 L-7.10542736e-15,46.6161358 C-7.10542736e-15,47.3973495 0.667857143,48 1.49357143,48 L32.4942857,48 C33.32,48 34,47.3973495 34,46.6161358 L34,1.38386422 C34,0.602650546 33.3321429,-1.0658141e-14 32.4942857,-1.0658141e-14 Z M17,46.9902104 C16.45,46.9902104 16,46.5303062 16,45.9904187 C16,45.4505311 16.45,44.990627 17,44.990627 C17.55,44.990627 18,45.4505311 18,45.9904187 C17.99,46.5303062 17.54,46.9902104 17,46.9902104 Z M32,43.9908352 L2,43.9908352 L2,3.99916684 L32,3.99916684 L32,43.9908352 Z M17,1.24973964 C17.41,1.24973964 17.75,1.58966882 17.75,1.99958342 C17.75,2.40949802 17.41,2.7494272 17,2.7494272 C16.59,2.7494272 16.25,2.40949802 16.25,1.99958342 C16.25,1.58966882 16.59,1.24973964 17,1.24973964 Z")
    
    static private var iPadMini = UIBezierPath(svgPath: "M20.737,3.55271368e-15 L1.27,3.55271368e-15 C0.582868556,0.0186499523 0.0290122717,0.569000817 0.006,1.256 L0,29.8 C0.0342241108,30.4753022 0.593843423,31.0040763 1.27,31 L20.737,31 C21.4228541,30.9778764 21.9746107,30.428741 22,29.743 L22,1.256 C21.9770149,0.569375714 21.4237414,0.0191687177 20.737,0 Z M10.944,1.251 C11.181219,1.25210336 11.3727327,1.44510674 11.3719979,1.68232713 C11.3712632,1.91954753 11.1785577,2.11136091 10.9413364,2.11099484 C10.7041152,2.11062876 10.5120026,1.91822153 10.512,1.681 C10.5130985,1.44358401 10.7055821,1.25154704 10.943,1.251 L10.944,1.251 Z M11,30.5 C10.4477153,30.5 10,30.0522847 10,29.5 C10,28.9477153 10.4477153,28.5 11,28.5 C11.5522847,28.5 12,28.9477153 12,29.5 C12,30.0522847 11.5522847,30.5 11,30.5 Z M20,28 L2,28 L2,3 L20,3 L20,28 Z")
    
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
