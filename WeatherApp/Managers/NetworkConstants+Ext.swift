//
//  NetworkConstants+Ext.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 22/02/22.
//

import Foundation
extension  NetworkConstants {
    
    static func getURLFor(lat: Double, long: Double) -> String {
        return "\(baseURL)onecall?lat=\(lat)&long=\(long)&exclude=minutely&appid=\(apiKey)&units=imperial"
    }
}
