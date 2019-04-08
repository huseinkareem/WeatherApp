//
//  MainViewController.swift
//  WeatherApp
//
//  Created by Husein Kareem on 4/5/19.
//  Copyright © 2019 Husein Kareem. All rights reserved.
//

//TODO: CoreLocation if requested
import UIKit

class MainViewController: UIViewController {
    
    //MARK: IBOutlets
    
    @IBOutlet private weak var temperatureLabel: UILabel!
    @IBOutlet private weak var highTempLabel: UILabel!
    @IBOutlet private weak var lowTempLabel: UILabel!
    @IBOutlet private weak var precipLabel: UILabel!
    @IBOutlet private weak var windLabel: UILabel!
    
    private var weatherData: WeatherData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        WeatherAPI.fetchCurrentWeatherForCity(LocalizedStrings.DefaultCity) { (weatherData, error) in
            //TODO: Add progress HUD
            guard let weatherData = weatherData else {
                return
            }
            
            self.weatherData = weatherData
            
            self.temperatureLabel.text = "\(weatherData.currentTemperatureInfo.currentTemperature)°"
            self.highTempLabel.text = "\(LocalizedStrings.HighTempLabelText)\(weatherData.currentTemperatureInfo.currentMaxTemp)°"
            self.lowTempLabel.text = "\(LocalizedStrings.LowTempLabelText)\(weatherData.currentTemperatureInfo.currentMinTemp)°"
            self.windLabel.text = "\(LocalizedStrings.WindLabelText)\(weatherData.wind.windSpeed) \(LocalizedStrings.MPH)"
        }
    }
    
    private func setupViews() {
        self.title = LocalizedStrings.MainVCTitle
        self.temperatureLabel.text = LocalizedStrings.TemperatureLabelPlaceholder
        self.highTempLabel.text = LocalizedStrings.HighTempLabelPlaceholder
        self.lowTempLabel.text = LocalizedStrings.LowTempLabelPlaceholder
        self.precipLabel.text = LocalizedStrings.PrecipLabelPlaceholder
        self.windLabel.text = LocalizedStrings.WindLabelPlaceholder
    }
}
