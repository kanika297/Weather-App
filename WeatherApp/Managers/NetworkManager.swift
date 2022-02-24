//
//  NetworkManager.swift
//  WeatherApp
//
//  Created by Kanika Parnami on 22/02/22.
//

import Foundation

class NetworkManager {
    
    //API call to get the weather for the URL
    static func fetch(for url: URL, completion: @escaping (Result<WeatherResponse, ErrorMessages>) -> Void) {
        
        //The following URLSession task is created to make the API hit
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            //First check is to see if there is a error returned
            if let error = error{
                print(error)
                completion(.failure(.invalidResponse))
                return
            }
            //Second check is made to confirm if the HTTP resposne code is 200
            guard let response = response as? HTTPURLResponse , response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            //Third check is to verify if data is valid
            guard let data = data else{
                completion(.failure(.invalidData))
                return
            }
            //Decode the received data into the model defined
            do{
                //let decoder = .init()
                let json = try JSONDecoder().decode(WeatherResponse.self, from: data)
                completion(.success(json))
            }catch{
                completion(.failure(.decodingError))
            }
        }
        task.resume()
    }
}

