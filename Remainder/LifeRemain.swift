//
//  LifeRemain.swift
//  Remainder
//
//  Created by Sam Wu on 7/1/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

final class LifeRemain {
    
    let years: Int
    let months: Int
    let days: Int
    let hours: Int
    let minutes: Int
    let seconds: Int
    
    init?(years: Int?, months: Int?, days: Int?, hours: Int?, minutes: Int?, seconds: Int?) {
        
        guard let years = years, months = months, days = days, hours = hours, minutes = minutes, seconds = seconds else {
            return nil
        }
        
        self.years = years
        self.months = months
        self.days = days
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
    }
}
