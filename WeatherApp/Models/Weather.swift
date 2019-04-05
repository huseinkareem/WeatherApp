//
//  Weather.swift
//  WeatherApp
//
//  Created by Husein Kareem on 4/5/19.
//  Copyright © 2019 Husein Kareem. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    var coord: Coordinate
    var weather: Weather
    var wind: Wind
    var cityName: String
    var currentTemperatureInfo: CurrentTemperatureInfo
    
    enum WeatherDataCodingKeys: String, CodingKey {
        case coord
        case weather
        case wind
        case cityName = "name"
        case currentTemperatureInfo = "main"
    }
}

struct Coordinate: Codable {
    var latitude: Double
    var longitude: Double
    
    enum CoordinateCodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lon"
    }
}

struct Weather: Codable {
    var mainDescription: String
    var subDescription: String
    
    enum WeatherCodingKeys: String, CodingKey {
        case mainDescription = "main"
        case subDescription = "description"
    }
}

struct CurrentTemperatureInfo: Codable {
    var currentTemperature: Double
    var currentMinTemp: Double
    var currentMaxTemp: Double
    
    enum CurrentTemperatureInfoCodingKeys: String, CodingKey {
        case currentTemperature = "temp"
        case currentMinTemp = "temp_min"
        case currentMaxTemp = "temp_max"
    }
}

struct Wind: Codable {
    var windSpeed: Double
    
    enum WindCodingKeys: String, CodingKey {
        case windSpeed = "speed"
    }
}
