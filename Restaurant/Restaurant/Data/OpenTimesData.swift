//
//  RestaurantOpenTimesData.swift
//  Restaurant
//
//  Created by Teguh Wibowo Wijaya on 23/02/23.
//

import Foundation

struct OpenTimesData {
    static let elPachucoOpenTimes = [
        OpenTime(fromDay: "Mon", toDay: "Fri", fromTime: "19:00", toTime: "00:00"),
        OpenTime(fromDay: "Sat", toDay: "Sun", fromTime: "12:00", toTime: "16:00"),
    ]
    
    static let harmoniSquareOpenTimes = [
        OpenTime(fromDay: "Every Day", toDay: nil, fromTime: "09:00", toTime: "21:00")
    ]
    
    static let catappaOpenTimes = [
        OpenTime(fromDay: "Every Day", toDay: nil, fromTime: "06:00", toTime: "23:00")
    ]
    
    
    static let edoginOpenTimes = [
        OpenTime(fromDay: "Monday", toDay: "Thursday", fromTime: "10:00", toTime: "22:00"),
        OpenTime(fromDay: "Friday", toDay: "Sunday", fromTime: "09:00", toTime: "18:00")
    ]
    
    static let furusatoIzakayaOpenTimes = [
        OpenTime(fromDay: "Every Day", toDay: nil, fromTime: "11:30", toTime: "15:30"),
        OpenTime(fromDay: "Every Day", toDay: nil, fromTime: "17:30", toTime: "23:00")
    ]
    
    
}
