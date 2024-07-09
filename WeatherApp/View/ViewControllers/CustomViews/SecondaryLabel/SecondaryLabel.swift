//
//  SecondaryLabel.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 26/02/22.
//

import UIKit

class SecondaryLabel: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configure()
    }
    
    private func configure(){
        self.textColor = .white
        self.textAlignment = .center
        self.backgroundColor = .clear
        self.font = UIFont.systemFont(ofSize: 20)
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = 0.90
        self.lineBreakMode = .byTruncatingTail
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
