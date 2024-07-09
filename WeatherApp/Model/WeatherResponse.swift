//
//  WeatherResponse.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 22/02/22.
//

import Foundation

// MARK: - WeatherResponse
struct WeatherResponse: Codable {
    var lat: Double
    var lon: Double
    var timezone: String
    var timezone_offset: Int
    var current: Weather
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(lat: 0.0, lon: 0.0, timezone: String.empty, timezone_offset: 0, current: Weather(), hourly: [Weather](repeating: Weather(), count: 23), daily: [DailyWeather](repeating: DailyWeather(), count: 8))
    }
}

