//
//  WeatherResponse.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 22/02/22.
//

import Foundation

// MARK: - WeatherResponse
struct WeatherResponse: Codable {
    var current: Weather
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(current: Weather(), hourly: [Weather](repeating: Weather(), count: 23), daily: [DailyWeather](repeating: DailyWeather(), count: 8))
    }
}

