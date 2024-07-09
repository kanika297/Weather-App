//
//  SearchCityViewModel.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 26/02/22.
//

import Foundation
import CoreLocation


/// CityWeatherDelegate for SearchCity feature
protocol CityWeatherDelegate: AnyObject {
    func getWeatherForCitySuccessful(weatherResponse: WeatherResponse)
    func getWeatherForCityFailed(errorMessage:String)
    func addFavouriteSuccessul()
    func addFavouriteFailed(errorMessage:String)
}

/// SearchCityViewModel for SearchCity feature
class SearchCityViewModel {
    var weather = WeatherResponse.empty()
    weak var cityWeatherDelegate: CityWeatherDelegate?
    
    /// Designated initializer for setting cityWeatherDelegate
    init(delegate: CityWeatherDelegate?) {
        self.cityWeatherDelegate = delegate
    }
    
    /// temperature computed property for getting current temp
    var temperature: String {
        return getTempFor(temp: weather.current.temp)
    }
    func getTempFor(temp: Double) -> String {
        return String(format: String.format, temp)
    }
    
    /// city computed property for getting city from getLocation
    var city: String = String.empty {
        didSet {
            getLocation()
        }
    }
    
    private func getLocation() {
        CLGeocoder().geocodeAddressString(city) { (placemarks, error) in
            if let places = placemarks, let place = places.first {
                self.getWeather(coord: place.location?.coordinate)
            }
        }
    }
    
    private func getWeather(coord: CLLocationCoordinate2D?) {
        if let coord = coord {
            let urlString = NetworkConstants.getURLFor(lat: coord.latitude, long: coord.longitude)
            getWeatherInternal(city: city, for: urlString)
        }
        else {
            let urlString = NetworkConstants.getURLFor(lat: 26.4499, long:  80.3319)
            getWeatherInternal(city: city, for: urlString)
        }
    }
    /// The API call is made the get the weather for the lat long
    private func getWeatherInternal(city: String, for urlString: String) {
        print(urlString)
        NetworkManager.sharedInstance.fetch(for: URL(string: urlString)!) { (result) in
            switch result {
            case .success(let response):
                DispatchQueue.main.async {
                    self.weather = response
                    self.cityWeatherDelegate?.getWeatherForCitySuccessful(weatherResponse: self.weather)
                }
            case .failure(let err):
                print(err.localizedDescription)
                self.cityWeatherDelegate?.getWeatherForCityFailed(errorMessage: err.rawValue)
            }
        }
    }
    
}
