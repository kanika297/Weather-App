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
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var sendImage: UIImageView!
    
    static var searchTextFieldAction: (_ city: String) -> Void = { _ in /*This is kept blank intentionally*/ }
    static var favouriteBtnAction: (_ city: String) -> Void = { _ in /*This is kept blank intentionally*/ }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
        self.createTapGestureRecognizer()
    }
    
    func setupUI() {
        
        //Setting Delegate
        self.searchTextField.delegate = self
        
        //Adding Background Color
        self.searchSuperView.backgroundColor =  UIColor.init(hexString: ColorConstants.searchBarColor).withAlphaComponent(0.9)
        self.searchBarView.backgroundColor = UIColor.init(hexString: ColorConstants.primaryBlueColour).withAlphaComponent(0.8)
        
        //Adding Tint Color
        self.searchBarImage?.tintColor = UIColor.init(hexString: ColorConstants.lightGreyCode)
        self.addfavImage?.tintColor = UIColor.init(hexString: ColorConstants.lightGreyCode)
        
        //Adding TextField Font
        self.searchTextField.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        //Adding Corner Radius
        self.layer.cornerRadius = 9.0
        self.searchSuperView.layer.cornerRadius = 9.0
        self.searchBarView.layer.cornerRadius = 9.0
    }
    
    func createTapGestureRecognizer() {
        let tapGestureRecognizerOnSearchImg = UITapGestureRecognizer(target: self, action: #selector(searchTextFieldActionCalled(_:)))
        self.sendImage.isUserInteractionEnabled = true
        self.sendImage.addGestureRecognizer(tapGestureRecognizerOnSearchImg)
        
        let tapGestureRecognizerOnAddFav = UITapGestureRecognizer(target: self, action: #selector(addFavouriteActionCalled(_:)))
        self.addfavImage.isUserInteractionEnabled = true
        self.addfavImage.addGestureRecognizer(tapGestureRecognizerOnAddFav)
    }
    
    @objc func searchTextFieldActionCalled(_ sender: AnyObject) {
        SearchView.searchTextFieldAction(self.searchTextField.text ?? String.empty)
    }
    
    @objc func addFavouriteActionCalled(_ sender: AnyObject) {
        SearchView.favouriteBtnAction(self.searchTextField.text ?? String.empty)
    }
}

extension SearchView: UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
