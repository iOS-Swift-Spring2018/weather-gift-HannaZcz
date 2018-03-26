//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by 周纯稚 on 25/03/2018.
//  Copyright © 2018 周纯稚. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    var currentSummary = ""
    
    func getWeather(completed: @escaping () -> ()) {
        //write code to get weather in here
        let weatherURL = urlBase + urlAPIKey + coordinates
//        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
//                    print("***** temperature inside getWeather = \(temperature)")
                    let roundedTemp = String(format: "%3.f", temperature)
                    self.currentTemp = roundedTemp + "°"
                    // ° --  shift Option 8
                } else {
                    print("Could not return a temperature")
                }
                if let summary = json["daily"]["summary"].string {
                    self.currentSummary = summary
                     print("The summary for \(self.name) is \(self.currentSummary)")
                } else {
                    print("Could not return a summary")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
}

