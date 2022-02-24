//
//  DailyWeather.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 23/02/22.
//

import Foundation

struct DailyWeather: Codable {
    var currentDate: Int
    var temp: Temperature
    var weather: [WeatherDetail]
    
    enum CodingKeys: String, CodingKey {
        case currentDate = "dt"
        case temp
        case weather
    }
    
    init() {
        currentDate = 0
        temp = Temperature(min: 0.0, max: 0.0)
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}
