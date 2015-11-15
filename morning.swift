//
//  morning.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/3/23.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation

func whatTime() -> String {
    let date = NSDate()
    let calendar = NSCalendar.currentCalendar()
    let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
    let hour = components.hour
    var time = ""
    switch hour {
    case 0..<7:
        time = "Mid-night"
    case 7..<12:
        time = "Moring"
    case 12..<14:
        time = "Noon"
    case 14..<18:
        time = "Afternoon"
    case 18..<24:
        time = "Night"
    default:
        time = "Unknown"
    }
    return time
}
