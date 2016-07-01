//
//  LifeStatistic.swift
//  Remainder
//
//  Created by Sam Wu on 7/1/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation

final class LifeStatistic {
    
    let currentAge: Float
    let yearsLeft: Float
    let monthsLeft: Float
    let daysLeft: Float
    let hoursLeft: Float
    let secondsLeft: Float
    let dateString: String
    let lifeRemain: LifeRemain
    let lifeCompletePercentage: Float
    
    let gender: Gender
    let birthDate: Date
    let timeCreated: Date
    
    init?(currentAge: Float?, yearsLeft: Float?, monthsLeft: Float?, daysLeft: Float?, hoursLeft: Float?, secondsLeft: Float?, dateString: String?, lifeRemain: LifeRemain, lifeCompletePercentage: Float, gender: Gender, birthDate: Date, timeCreated: Date) {
        
        guard let currentAge = currentAge, yearsLeft = yearsLeft, monthsLeft = monthsLeft, daysLeft = daysLeft, hoursLeft = hoursLeft, secondsLeft = secondsLeft, dateString = dateString else {
            return nil
        }
        
        self.currentAge = currentAge
        self.yearsLeft = yearsLeft
        self.monthsLeft = monthsLeft
        self.daysLeft = daysLeft
        self.hoursLeft = hoursLeft
        self.secondsLeft = secondsLeft
        self.dateString = dateString
        self.lifeRemain = lifeRemain
        self.lifeCompletePercentage = lifeCompletePercentage
        
        self.gender = gender
        self.birthDate = birthDate
        self.timeCreated = timeCreated
    }
}
