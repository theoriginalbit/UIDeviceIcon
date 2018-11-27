//
//  UIDeviceIcon.swift
//  UIDeviceIcon
//
//  Created by theoriginalbit on 27/10/18.
//  Copyright © 2018 theoriginalbit. All rights reserved.
//

import UIKit
import UIDeviceModel

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
        let device: Device
        
        switch actualModel {
        case .iPad:
            device = iPad
        case .iPad2, .iPad3, .iPad4, .iPad5, .iPad6:
            device = iPad2
        case .iPadAir, .iPadAir2, .iPadPro9Inch:
            device = iPadAir
        case .iPadPro10Inch:
            device = iPadPro10Inch
        case .iPadPro11Inch:
            device = iPadPro11Inch
        case .iPadPro12Inch, .iPadPro12Inch2:
            device = iPadPro12Inch
        case .iPadPro12Inch3:
            device = iPadPro12Inch3
        case .iPadMini, .iPadMini2, .iPadMini3, .iPadMini4:
            device = iPadMini
        case .iPhone5s:
            device = iPhone5s
        case .iPhoneSE:
            device = iPhoneSE
        case .iPhone6, .iPhone6s, .iPhone7, .iPhone8:
            device = iPhone6
        case .iPhone6Plus, .iPhone6sPlus, .iPhone7Plus, .iPhone8Plus:
            device = iPhone6Plus
        case .iPhoneX, .iPhoneXS:
            device = iPhoneX
        case .iPhoneXSMax:
            device = iPhoneXSMax
        case .iPhoneXR:
            device = iPhoneXR
        case .iPodTouch, .iPodTouch2, .iPodTouch3, .iPodTouch4, .iPodTouch5, .iPodTouch6:
            device = iPodTouch
        
        // all cases we don't have icons
            
        case .iPhone, .iPhone3G, .iPhone3GS, .iPhone4, .iPhone4s, .iPhone5, .iPhone5c:
            return .unsupported(model)
        case .simulator(_):
            fatalError("🤥") // we just unwrapped it!
        case .unknown(let device):
            return .unknown(device)
        }
        
        let layer = CAShapeLayer()
        layer.path = device.path.cgPath
        layer.fillColor = UIColor.black.cgColor
        return .deviceIcon(layer)
    }
    
    static private var iPad: Device = iPadDevice()
    static private var iPad2: Device = iPad2Device()
    static private var iPadAir: Device = iPadAirDevice()
    static private var iPadPro10Inch: Device = iPadPro10InchDevice()
    static private var iPadPro11Inch: Device = iPadPro11InchDevice()
    static private var iPadPro12Inch: Device = iPadPro12InchDevice()
    static private var iPadPro12Inch3: Device = iPadPro12Inch3Device()
    static private var iPadMini: Device = iPadMiniDevice()
    static private let iPhone5s: Device = iPhone5sDevice()
    static private let iPhoneSE: Device = iPhoneSEDevice()
    static private let iPhone6: Device = iPhone6Device()
    static private let iPhone6Plus: Device = iPhone6PlusDevice()
    static private let iPhoneX: Device = iPhoneXDevice()
    static private let iPhoneXR: Device = iPhoneXRDevice()
    static private let iPhoneXSMax: Device = iPhoneXSMaxDevice()
    static private let iPodTouch: Device = iPodTouchDevice()
}

protocol Device {
    
    var bezel: UIBezierPath { get }
    
    var screen: UIBezierPath { get }
    
    var camera: UIBezierPath? { get }
    
    var speaker: UIBezierPath? { get }
    
    var home: UIBezierPath? { get }
}

extension Device {
    
    var path: UIBezierPath {
        let device = UIBezierPath()
        device.append(self.bezel)
        device.append(self.screen.reversing())
        if let camera = self.camera {
            device.append(camera.reversing())
        }
        if let speaker = self.speaker {
            device.append(speaker.reversing())
        }
        if let home = self.home {
            device.append(home.reversing())
        }
        return device
    }
}
