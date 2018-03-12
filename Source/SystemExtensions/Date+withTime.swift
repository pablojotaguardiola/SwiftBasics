//
//  Date+getTodayOClock.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 11/02/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation

extension Date {
    
    public func withTime(hour: Int, minutes: Int, seconds: Int) -> Date {
        
        let gregorian = Calendar(identifier: .gregorian)
        let now = self
        var components = gregorian.dateComponents([.year, .month, .day, .hour, .minute, .second], from: now)
        
        components.hour = hour
        components.minute = minutes
        components.second = seconds
        
        if let newDate = gregorian.date(from: components) {
            return newDate
        }
        
        return self
    }
    
}
