//
//  SearchCityViewController.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 24/02/22.
//

import UIKit

class SearchCityViewController: UIViewController {

    @IBOutlet var contentView: UIView!
    @IBOutlet var searchView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSubViews()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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
    
    func addSubViews() {
        let searchViewNib = UINib(nibName: "SearchView", bundle: Bundle(for: SearchView.self)).instantiate(withOwner: self, options: nil)[0] as? SearchView
        searchViewNib?.frame.size.width = self.searchView!.frame.width
        self.searchView.addSubview(searchViewNib ?? SearchView())
    }
}
