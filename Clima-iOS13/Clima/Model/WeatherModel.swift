//
//  WeatherModel.swift
//  Clima
//
//  Created by Andrew Chamberlain on 6/8/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        let formatted = String(format: "%.0f", temperature)
        return formatted
    }
    var conditionName: String {
        switch conditionId {
        case(200..<300):
            return "cloud.bolt"
        case (300..<400):
            return "cloud.drizzle"
        case (500..<600):
            return "cloud.rain"
        case (600..<700):
            return "cloud.snow"
        case (700..<800):
            return "cloud.fog"
        case (801..<900):
            return "cloud"
        default:
            return "sun.max"
        }
    }
}
