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
}
