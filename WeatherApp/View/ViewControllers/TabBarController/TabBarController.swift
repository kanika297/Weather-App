//
//  TabBarController.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 22/02/22.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = UIColor.init(hexString: ColorConstants.secondaryBlueColour)
        self.viewControllers = [createSearchNavigationController(), createFavouritesNavigationController()]
    }
    
    //Creating the search city VC to add it in the tab bar
    func createSearchNavigationController() -> UINavigationController{
        let searchVC = SearchCityViewController()
        //searchVC.title = AppMessages.searchWeather.rawValue
        //searchVC.searchCityViewModel = SearchCityViewModel.init(delegate: searchVC)
        //Setting the icon in the tab bar to the default search icon
        searchVC.tabBarItem = UITabBarItem.init(tabBarSystemItem: .search, tag: 0)
        searchVC.tabBarItem.accessibilityIdentifier = AccessibilityIdentifers.searchTabBarButton
        return UINavigationController(rootViewController: searchVC)
    }
    
    //Creating the favourites VC to add it in the tab bar
    func createFavouritesNavigationController() -> UINavigationController{
        let favouritesVC = FavouritesViewController()
        //favouritesVC.title = AppMessages.favouriteCities.rawValue
        //favouritesVC.favouritesViewModel = FavouritesViewModel.init(favouritesDelegate: favouritesVC)
        //Setting the icon in the tab bar to the default favourite icon
        favouritesVC.tabBarItem = UITabBarItem.init(tabBarSystemItem: .favorites, tag: 1)
        favouritesVC.tabBarItem.accessibilityIdentifier = AccessibilityIdentifers.favouriteTabBarButton
        return UINavigationController(rootViewController: favouritesVC)
    }

}
