//
//  CADeviceLayer.swift
//  UIDeviceIcon
//
//  Created by theoriginalbit on 28/11/18.
//  Copyright © 2018 theoriginalbit. All rights reserved.
//

import UIKit

public class CADeviceLayer: CAShapeLayer {
    
    public var bezelColor: UIColor? {
        didSet {
            self.fillColor = bezelColor?.cgColor
        }
    }
    
    public var screenColor: UIColor? {
        didSet {
            screenLayer.fillColor = screenColor?.cgColor
        }
    }
    
    public var speakerColor: UIColor? {
        didSet {
            speakerLayer?.fillColor = speakerColor?.cgColor
        }
    }
    
    public var cameraColor: UIColor? {
        didSet {
            cameraLayer?.fillColor = cameraColor?.cgColor
        }
    }
    
    public var homeColor: UIColor? {
        didSet {
            homeLayer?.fillColor = homeColor?.cgColor
        }
    }
    
    // we're doing these layers as lazy so that only when someone sets the respective colours does it create the layer
    
    private(set) lazy var screenLayer: CAShapeLayer = {
        let layer = CAShapeLayer(path: device.screen, color: screenColor)
        addSublayer(layer)
        return layer
    }()
    
    private(set) lazy var speakerLayer: CAShapeLayer? = {
        if let speaker = device.speaker {
            let layer = CAShapeLayer(path: speaker, color: speakerColor)
            addSublayer(layer)
            return layer
        }
        return nil
    }()
    
    private(set) lazy var cameraLayer: CAShapeLayer? = {
        if let camera = device.camera {
            let layer = CAShapeLayer(path: camera, color: cameraColor)
            addSublayer(layer)
            return layer
        }
        return nil
    }()
    
    private(set) lazy var homeLayer: CAShapeLayer? = {
        if let home = device.home {
            let layer = CAShapeLayer(path: home, color: homeColor)
            addSublayer(layer)
            return layer
        }
        return nil
    }()
    
    private let device: Device
    
    init(_ device: Device, withColor color: UIColor) {
        self.device = device
        super.init()
        self.path = device.path.cgPath
        self.bezelColor = color
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
