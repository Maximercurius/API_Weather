//
//  CurrentWeather.swift
//  Sunny
//
//  Created by Makarov_Maxim on 11.03.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    let temperature: Double
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    let feelsLikeTemperature: Double
    var feelsLiketemperatureString: String {
        return "\(feelsLikeTemperature.rounded())"
    }
    let conditionCode: Int
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.feelsLike
        conditionCode = currentWeatherData.weather.first!.id
        
    }
}
