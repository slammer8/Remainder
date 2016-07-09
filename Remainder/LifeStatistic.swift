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
    let minutesLeft: Float
    let secondsLeft: Float
    let dateString: String
    let lifeRemain: LifeRemain
    let lifeCompletePercentage: Float
    
    let gender: Gender
    let birthDate: Date
    let timeUpdated: Date
    
    init(currentAge: Float, yearsLeft: Float, monthsLeft: Float, daysLeft: Float, hoursLeft: Float, minutesLeft: Float, secondsLeft: Float, dateString: String, lifeRemain: LifeRemain, lifeCompletePercentage: Float, gender: Gender, birthDate: Date, timeUpdated: Date = Date()) {
        
        self.currentAge = currentAge
        self.yearsLeft = yearsLeft
        self.monthsLeft = monthsLeft
        self.daysLeft = daysLeft
        self.hoursLeft = hoursLeft
        self.minutesLeft = minutesLeft
        self.secondsLeft = secondsLeft
        self.dateString = dateString
        self.lifeRemain = lifeRemain
        self.lifeCompletePercentage = lifeCompletePercentage
        
        self.gender = gender
        self.birthDate = birthDate
        self.timeUpdated = timeUpdated
    }
}

extension LifeStatistic: Parseable {
    typealias ParserType = LifeStatisticParser
}
