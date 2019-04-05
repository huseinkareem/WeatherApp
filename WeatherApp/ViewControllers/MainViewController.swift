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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupViews()
    }
    
    private func setupViews() {
        self.title = LocalizedStrings.MainVCTitle
        self.temperatureLabel.text = LocalizedStrings.TemperatureLabelPlaceholder
    }
}
