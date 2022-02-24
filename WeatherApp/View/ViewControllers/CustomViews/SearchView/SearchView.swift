//
//  SearchView.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 24/02/22.
//

import UIKit

class SearchView: UIView {

    @IBOutlet var searchSuperView: UIView!
    @IBOutlet var searchBarView: UIView!
    @IBOutlet var searchBarImage: UIImageView!
    @IBOutlet var addfavImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
        
    }
    func setupUI() {
        self.searchSuperView.backgroundColor =  UIColor.init(hexString: ColorConstants.secondaryBlueColour).withAlphaComponent(0.9)
        self.layer.cornerRadius = 9.0
        self.searchSuperView.layer.cornerRadius = 9.0
        
        self.searchBarView.backgroundColor = UIColor.init(hexString: ColorConstants.primaryBlueColour).withAlphaComponent(0.8)
        self.searchBarView.layer.cornerRadius = 9.0
        self.searchBarImage?.tintColor = UIColor.init(hexString: ColorConstants.lightGreyCode)
        self.addfavImage?.tintColor = UIColor.init(hexString: ColorConstants.lightGreyCode)
        
        
        
    }
}
