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
    var weather: [Weather]
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
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: WeatherDataCodingKeys.self)
        cityName = try values.decode(String.self, forKey: .cityName)
        coord = try values.decode(Coordinate.self, forKey: .coord)
        weather = try values.decode([Weather].self, forKey: .weather)
        wind = try values.decode(Wind.self, forKey: .wind)
        currentTemperatureInfo = try values.decode(CurrentTemperatureInfo.self, forKey: .currentTemperatureInfo)
    }
}

struct Coordinate: Codable {
    var latitude: Double
    var longitude: Double
    
    enum CoordinateCodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lon"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CoordinateCodingKeys.self)
        latitude = try values.decode(Double.self, forKey: .latitude)
        longitude = try values.decode(Double.self, forKey: .longitude)
    }
}

struct Weather: Codable {
    var mainDescription: String
    var subDescription: String
    
    enum WeatherCodingKeys: String, CodingKey {
        case mainDescription = "main"
        case subDescription = "description"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: WeatherCodingKeys.self)
        mainDescription = try values.decode(String.self, forKey: .mainDescription)
        subDescription = try values.decode(String.self, forKey: .subDescription)
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
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CurrentTemperatureInfoCodingKeys.self)
        currentTemperature = try values.decode(Double.self, forKey: .currentTemperature)
        currentMinTemp = try values.decode(Double.self, forKey: .currentMinTemp)
        currentMaxTemp = try values.decode(Double.self, forKey: .currentMaxTemp)
    }
    
    //TODO: Convert Kelvin to Farenheint (add class to Utilities)
}

struct Wind: Codable {
    var windSpeed: Double
    
    enum WindCodingKeys: String, CodingKey {
        case windSpeed = "speed"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: WindCodingKeys.self)
        windSpeed = try values.decode(Double.self, forKey: .windSpeed)
    }
}
