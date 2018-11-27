//
//  iPodTouchDevices.swift
//  UIDeviceIcon
//
//  Created by theoriginalbit on 28/11/18.
//  Copyright © 2018 theoriginalbit. All rights reserved.
//

import UIKit

struct iPodTouchDevice: Device {
    
    var bezel: UIBezierPath = {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 2.94))
        path.addCurve(to: CGPoint(x: 0.85, y: 0.8), controlPoint1: CGPoint(x: -0.03, y: 2.14), controlPoint2: CGPoint(x: 0.28, y: 1.36))
        path.addCurve(to: CGPoint(x: 3, y: 0.01), controlPoint1: CGPoint(x: 1.42, y: 0.24), controlPoint2: CGPoint(x: 2.2, y: -0.03))
        path.addLine(to: CGPoint(x: 14.06, y: 0.01))
        path.addCurve(to: CGPoint(x: 16.18, y: 0.82), controlPoint1: CGPoint(x: 14.85, y: -0.03), controlPoint2: CGPoint(x: 15.62, y: 0.24))
        path.addCurve(to: CGPoint(x: 17, y: 2.94), controlPoint1: CGPoint(x: 16.74, y: 1.38), controlPoint2: CGPoint(x: 17.04, y: 2.14))
        path.addLine(to: CGPoint(x: 17, y: 32.08))
        path.addCurve(to: CGPoint(x: 16.18, y: 34.19), controlPoint1: CGPoint(x: 17.04, y: 32.86), controlPoint2: CGPoint(x: 16.74, y: 33.63))
        path.addCurve(to: CGPoint(x: 14.06, y: 35.01), controlPoint1: CGPoint(x: 15.62, y: 34.75), controlPoint2: CGPoint(x: 14.85, y: 35.04))
        path.addLine(to: CGPoint(x: 3, y: 35.01))
        path.addCurve(to: CGPoint(x: 0.85, y: 34.21), controlPoint1: CGPoint(x: 2.2, y: 35.06), controlPoint2: CGPoint(x: 1.42, y: 34.77))
        path.addCurve(to: CGPoint(x: 0, y: 32.08), controlPoint1: CGPoint(x: 0.28, y: 33.65), controlPoint2: CGPoint(x: -0.03, y: 32.87))
        return path
    }()
    
    var screen: UIBezierPath = UIBezierPath(rect: CGRect(x: 1, y: 5.01, width: 15, height: 25))
    
    var camera: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 8, y: 2.02, width: 1, height: 1))
    
    var speaker: UIBezierPath?
    
    var home: UIBezierPath? = UIBezierPath(ovalIn: CGRect(x: 7.52, y: 31.01, width: 2, height: 2))
}
