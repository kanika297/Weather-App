//
//  ErrorMessages.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 22/02/22.
//

import Foundation

enum ErrorMessages: String, Error {
    case decodingError = ""
    case invalidCity = "This city name created invalid request . Please try again"
    case unableToCompleteRequest = "Unable to complete request. Please try again."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from server is invalid."
    case unableToAddFavourite = "Unable to add  city to favorites."
    case alreadyInFavourite = "City already added as favorite"
    case enterValidCityName = "Please enter a valid city name"
    case errorString = "Error"
    case unableToFetchFavourtie = "Error trying to fetch favorite . Please try again ."
    case noFavAdded = "No Favorites Added"
    
}
