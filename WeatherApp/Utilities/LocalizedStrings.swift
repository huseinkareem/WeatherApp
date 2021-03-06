//
//  LocalizedStrings.swift
//  WeatherApp
//
//  Created by Husein Kareem on 4/5/19.
//  Copyright © 2019 Husein Kareem. All rights reserved.
//

import Foundation

enum LocalizedStrings {
    
    //MARK: MainViewController strings
    
    static let MainVCTitle = NSLocalizedString("Weather App", comment: "Main View Controller title")
    static let TemperatureLabelPlaceholder = NSLocalizedString("--°", comment: "Temperature label placeholder text")
    static let HighTempLabelPlaceholder = NSLocalizedString("High: --°", comment: "High Temperature label placeholder text")
    static let LowTempLabelPlaceholder = NSLocalizedString("Low: --°", comment: "Low Temperature label placeholder text")
    static let PrecipLabelPlaceholder = NSLocalizedString("Precip: --", comment: "Precip label placeholder text")
    static let WindLabelPlaceholder = NSLocalizedString("Wind: --", comment: "Wind label placeholder text")
    static let DefaultCity = NSLocalizedString("Chicago", comment: "Default city for current weather")
    static let HighTempLabelText = NSLocalizedString("High: ", comment: "High temp text label prefix")
    static let LowTempLabelText = NSLocalizedString("Low: ", comment: "Low temp text label prefix")
    static let PrecipLabelText = NSLocalizedString("Precip: ", comment: "Precip text label prefix")
    static let WindLabelText = NSLocalizedString("Wind: ", comment: "Wind text label prefix")
    static let MPH = NSLocalizedString("MPH", comment: "Miles per hour")
}
