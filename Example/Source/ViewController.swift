//
//  ViewController.swift
//  UIDeviceIcon_Example
//
//  Created by Joshua Asbury on 28/10/18.
//  Copyright © 2018 theoriginalbit. All rights reserved.
//

import UIDeviceIcon
import UIKit

class ViewController: UIViewController {
    @IBOutlet var shapeView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        switch UIDevice.current.deviceIcon {
        case let .deviceIcon(layer):
            applyDeviceIcon(layer)
        case let .unknown(deviceIdentifier):
            fatalError("Unknown device \(deviceIdentifier)")
        case let .unsupported(deviceModel):
            fatalError("Unknown device \(deviceModel)")
        }
    }

    private func applyDeviceIcon(_ deviceIcon: CADeviceLayer) {
        deviceIcon.bezelColor = .white
        deviceIcon.screenColor = .red
        deviceIcon.cameraColor = .green
        deviceIcon.speakerColor = .orange
        deviceIcon.homeColor = .blue

        let dontChange: CGFloat = 1.0
        let scale: CGFloat = 4.0

        let parentSize = view.bounds.size
        let deviceIconSize = deviceIcon.path!.boundingBox.size

        // make the icon centered in the view
        let x = (parentSize.width / 2) - ((deviceIconSize.width * scale) / 2)
        let y = (parentSize.height / 2) - ((deviceIconSize.height * scale) / 2)
        let pos = CGPoint(x: x, y: y)

        deviceIcon.transform = CATransform3DMakeScale(scale, scale, dontChange)
        deviceIcon.position = pos

        view.layer.addSublayer(deviceIcon)
    }
}
