//
//  LifeRemainParser.swift
//  Remainder
//
//  Created by Sam Wu on 7/1/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation
import SwiftyJSON

final class LifeRemainParser {
    
    static func parse(json: JSON) -> LifeRemain {
        return LifeRemain(years: json["years"].intValue,
                          months: json["months"].intValue,
                          days: json["days"].intValue,
                          hours: json["hours"].intValue,
                          minutes: json["minutes"].intValue,
                          seconds: json["seconds"].intValue)
    }
    
}
