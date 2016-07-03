//
//  LifeStatisticParser.swift
//  Remainder
//
//  Created by Sam Wu on 7/1/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import SwiftyJSON

final class LifeStatisticParser: Parser {
    
    static func parse(data: Data?, request: Request?) -> LifeStatistic? {
        
        guard let data = data, mashapeRequest = request as? MashapeRequest else {
            return nil
        }
        
        guard case let MashapeRequest.lifeLeft(birthDate: date, gender: gender) = mashapeRequest else {
            return nil
        }
        
        let json = JSON(data: data)
        
        let currentAge = json["currentAge"].floatValue
        let yearsLeft = json["yearsLeft"].floatValue
        let monthsLeft = json["monthsLeft"].floatValue
        let daysLeft = json["daysLeft"].floatValue
        let hoursLeft = json["hoursLeft"].floatValue
        let minutesLeft = json["minutesLeft"].floatValue
        let secondsLeft = json["secondsLeft"].floatValue
        let dateString = json["dateString"].stringValue
        let lifeRemain = LifeRemainParser.parse(json: json["date"])
        let lifeCompletePercentage = json["lifeComplete"].floatValue
        
        return LifeStatistic(currentAge: currentAge, yearsLeft: yearsLeft, monthsLeft: monthsLeft, daysLeft: daysLeft, hoursLeft: hoursLeft, minutesLeft: minutesLeft, secondsLeft: secondsLeft, dateString: dateString, lifeRemain: lifeRemain, lifeCompletePercentage: lifeCompletePercentage, gender: gender, birthDate: date)
    }
    
}
