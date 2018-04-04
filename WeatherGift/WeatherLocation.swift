//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by 周纯稚 on 01/04/2018.
//  Copyright © 2018 周纯稚. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name = ""
    var coordinates = ""
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
