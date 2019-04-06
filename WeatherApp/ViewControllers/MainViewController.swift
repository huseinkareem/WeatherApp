//
//  MainViewController.swift
//  WeatherApp
//
//  Created by Husein Kareem on 4/5/19.
//  Copyright © 2019 Husein Kareem. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: IBOutlets
    
    @IBOutlet private weak var temperatureLabel: UILabel!
    @IBOutlet private weak var highTempLabel: UILabel!
    @IBOutlet private weak var lowTempLabel: UILabel!
    @IBOutlet private weak var precipLabel: UILabel!
    @IBOutlet private weak var windLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupViews()
        
        WeatherAPI.fetchCurrentWeatherForCity("Chicago") { (weatherData, error) in
            //TODO:
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
