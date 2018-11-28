//
//  CAShapeLayer+initConvenience.swift
//  UIDeviceIcon
//
//  Created by theoriginalbit on 28/11/18.
//  Copyright © 2018 theoriginalbit. All rights reserved.
//

import UIKit

extension CAShapeLayer {
    
    convenience init(path: UIBezierPath, color: UIColor?) {
        self.init()
        self.path = path.cgPath
        self.fillColor = color?.cgColor
    }
}
