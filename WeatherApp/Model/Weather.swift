//
//  Weather.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 22/02/22.
//

import Foundation

struct Weather: Codable {
    var currentDate: Int
    var sunrise: Int?
    var sunset: Int?
    var temp: Double
    var feelsLike: Double
    var pressure: Int
    var humidity: Int
    var dewPoint: Double
    var uvi: Double
    var clouds: Int
    var visibility: Int
    var windSpeed: Double
    var windDeg: Int
    var windGust: Double
    var pop:Int?
    var weather: [WeatherDetail]
    
    enum CodingKeys: String, CodingKey {
        case currentDate = "dt"
        case sunrise
        case sunset
        case temp
        case feelsLike = "feels_like"
        case pressure
        case humidity
        case dewPoint = "dew_point"
        case uvi
        case clouds
        case visibility
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
        case weather
        case pop
    }
    
    init() {
        currentDate = 0
        temp = 0.0
        feelsLike = 0.0
        pressure = 0
        humidity = 0
        dewPoint = 0.0
        uvi = 0
        clouds = 0
        visibility = 0
        windSpeed = 0.0
        windDeg = 0
        windGust = 0.0
        weather = []
    }
   
}
