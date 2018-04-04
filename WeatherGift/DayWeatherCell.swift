//
//  DayWeatherCell.swift
//  WeatherGift
//
//  Created by 周纯稚 on 31/03/2018.
//  Copyright © 2018 周纯稚. All rights reserved.
//

import UIKit

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE"
    print("**** DateFormatter Just Created in DayWeatherCell")
    return dateFormatter
}()


class DayWeatherCell: UITableViewCell {

    @IBOutlet weak var dayCellIcon: UIImageView!
    @IBOutlet weak var dayCellWeekday: UILabel!
    @IBOutlet weak var dayCellMaxTemp: UILabel!
    @IBOutlet weak var dayCellMinTemp: UILabel!
    @IBOutlet weak var dayCellSummary: UITextView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func update(with dailyForcast: WeatherDetail.DailyForecast, timeZone: String) {
        dayCellIcon.image = UIImage(named: dailyForcast.dailyIcon)
        dayCellSummary.text = dailyForcast.dailySummary
        dayCellMaxTemp.text = String(format: "%2.f", dailyForcast.dailyMaxTemp) + "°"
        dayCellMinTemp.text = String(format: "%2.f", dailyForcast.dailyMinTemp) + "°"
//        let usableDate = Date(timeIntervalSince1970: dailyForcast.dailyDate)
////        let dateFormatter = DateFormatter()
////        dateFormatter.dateFormat = "EEEE"
//        dateFormatter.timeZone = TimeZone(identifier: timeZone)
//        let dateString = dateFormatter.string(from: usableDate)
        let dateString = dailyForcast.dailyDate.format(timeZone: timeZone, dateFormatter: dateFormatter)
        dayCellWeekday.text = dateString
    }
    
}
