//
//  TimeInterval+format.swift
//  WeatherGift
//
//  Created by 周纯稚 on 31/03/2018.
//  Copyright © 2018 周纯稚. All rights reserved.
//

import Foundation

extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
}
