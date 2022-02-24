//
//  GradientView.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 25/02/22.
//

import Foundation
import UIKit

@IBDesignable
open class GradientView: UIView {

    @IBInspectable var startColor: UIColor = UIColor.init(hexString: ColorConstants.primaryBlueColour)
    @IBInspectable var endColor: UIColor = UIColor.init(hexString: ColorConstants.secondaryBlueColour)

    override open func draw(_ rect: CGRect) {

       let gradient = CAGradientLayer()
       gradient.frame = bounds
       gradient.type = .axial
       gradient.colors = [
           startColor.cgColor,
           endColor.cgColor
       ]
       gradient.locations = [0.0, 1.0]
       layer.insertSublayer(gradient, at: 0)
    }
}
