//
//  PrimaryLabel.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 26/02/22.
//

import UIKit

class PrimaryLabel: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configure()
    }
    
    private func configure(){
        self.textColor = .white
        self.backgroundColor = .clear
        self.font = UIFont.systemFont(ofSize: 45, weight: .bold)
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = 0.90
        self.lineBreakMode = .byTruncatingTail
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
