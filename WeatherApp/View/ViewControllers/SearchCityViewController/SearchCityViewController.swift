//
//  SearchCityViewController.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 24/02/22.
//

import UIKit

class SearchCityViewController: UIViewController {

    @IBOutlet var contentView: GradientView!
    @IBOutlet var searchView: UIView!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    var searchCityViewModel: SearchCityViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSubViews()
        self.setupUI()
        self.hideKeyboardWhenTappedAround()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.displayLoadingView()
        //Setting API based on default city
        self.searchCityViewModel?.city = AppMessages.defaultCity.rawValue
        self.view.setGradientColorTopToBottom(ColorConstants.primaryBlueColour, ColorConstants.secondaryBlueColour)
        self.contentView.setGradientColorTopToBottom(ColorConstants.primaryBlueColour, ColorConstants.secondaryBlueColour)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func setupUI() {

        
    }
    
    func addSubViews() {
        let searchViewNib = UINib(nibName: AppMessages.searchViewNibName.rawValue, bundle: Bundle(for: SearchView.self)).instantiate(withOwner: self, options: nil)[0] as? SearchView
        searchViewNib?.frame.size.width = self.searchView!.frame.width
        self.searchView.addSubview(searchViewNib ?? SearchView())
        SearchView.searchTextFieldAction  = {[weak self] cityName in
            //updating the CityName API will be called internally based on city
            self?.searchCityViewModel?.city = cityName
        }
        SearchView.favouriteBtnAction = {[weak self] cityName in
            
        }
    }
    func updateCityInformation() {
        self.cityLabel.text = self.searchCityViewModel?.city
       // self.dateLabel = self.searchCityViewModel?.city
    }
   
}
extension SearchCityViewController: CityWeatherDelegate {
    func getWeatherForCitySuccessful(weatherResponse: WeatherResponse) {
        self.dismissLoadingView()
        self.updateCityInformation()
    }
    
    func getWeatherForCityFailed(errorMessage: String) {
        self.dismissLoadingView()
        self.displayAlertPopup(alertTitle: ErrorMessages.errorString.rawValue, alertMessage: errorMessage, buttonTitle: AppMessages.okString.rawValue)
    }
    
    func addFavouriteSuccessul() {
        
    }
    
    func addFavouriteFailed(errorMessage: String) {
        
    }
    
    
}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
