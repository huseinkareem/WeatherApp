//
//  WeatherAPI.swift
//  WeatherApp
//
//  Created by Husein Kareem on 4/5/19.
//  Copyright © 2019 Husein Kareem. All rights reserved.
//

import Foundation
import UIKit

typealias CurrentWeatherCompletion = (_ weatherData: WeatherData, _ error: Error?) -> Void

struct WeatherAPI {
    
    //MARK: Properties
    //TODO: Obfuscate api key
    private static var APIKey = "f3223b8ce36ebff56eca29103515a962"
    private static var BaseURLString = "http://api.openweathermap.org/data/2.5/"
    private static var CurrentWeatherEndpoint = "weather?q="
    
    
    static func fetchCurrentWeatherForCity(_ cityName: String, completion: @escaping CurrentWeatherCompletion) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        let cityURLString = WeatherAPI.CurrentWeatherEndpoint + cityName
        let urlString = WeatherAPI.BaseURLString + cityURLString + "&appid=" + WeatherAPI.APIKey
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let weatherData = try decoder.decode(WeatherData.self, from: data)
                DispatchQueue.main.async {
                    completion(weatherData, nil)
                }
            } catch let err {
                print("err")
            }
            
        }.resume()
    }
}
