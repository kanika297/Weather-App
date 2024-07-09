//
//  DailyWeather.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 23/02/22.
//

import Foundation

struct DailyWeather: Codable {
    var currentDate: Int
    var sunrise: Int
    var sunset: Int
    var moonrise: Int
    var moonset: Int
    var moonPhase: Double
    var pressure: Int
    var humidity: Int
    var dewPoint: Double
    var windSpeed: Double
    var windDeg: Int
    var windGust: Double
    var clouds: Int
    var pop: Int
    var uvi: Double
    var temp: Temperature
    var feelsLike: Temperature
    var weather: [WeatherDetail]
    
    enum CodingKeys: String, CodingKey {
        case currentDate = "dt"
        case sunrise
        case sunset
        case moonrise
        case moonset
        case moonPhase = "moon_phase"
        case pressure
        case humidity
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
        case clouds
        case pop
        case uvi
        case temp
        case feelsLike = "feels_like"
        case weather
    }
    
    init() {
        currentDate = 0
        sunrise = 0
        sunset = 0
        moonrise = 0
        moonset = 0
        moonPhase = 0.0
        pressure = 0
        humidity = 0
        dewPoint = 0.0
        windSpeed = 0.0
        windDeg = 0
        windGust = 0.0
        clouds = 0
        pop = 0
        uvi = 0.0
        temp = Temperature(day: 0.0, min: 0.0, max: 0.0, night: 0.0, eve: 0.0, morn: 0.0)
        feelsLike = Temperature(day: 0.0, min: 0.0, max: 0.0, night: 0.0, eve: 0.0, morn: 0.0)
        weather = [WeatherDetail(id: 0, main: String.empty, description: String.empty, icon: String.empty)]
    }
}
