//
//  Date+previousWeekDay.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 23/02/2018.
//  Copyright © 2018 Pablo Guardiola. All rights reserved.
//

import Foundation

extension Date {
    
    static var mondaysDate: Date {
        return Calendar(identifier: .iso8601).date(from: Calendar(identifier: .iso8601).dateComponents([.yearForWeekOfYear, .weekOfYear], from: Date()))!
    }
    
}
