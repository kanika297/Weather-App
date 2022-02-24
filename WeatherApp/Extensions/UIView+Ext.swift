//
//  UIView_Ext.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 24/02/22.
//

import Foundation
import UIKit

extension UIView {
    ///extension to set navigation bar gradient color
    func setGradientColorTopToBottom(_ hexCodeOfColorOne: String, _ hexCodeOfColorTwo: String) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.type = .axial
        gradient.colors = [
            UIColor.init(hexString: hexCodeOfColorOne).cgColor,
            UIColor.init(hexString: hexCodeOfColorTwo).cgColor,
        ]
        gradient.locations = [0.0, 1.0]
        layer.insertSublayer(gradient, at: 0)
    }

}
