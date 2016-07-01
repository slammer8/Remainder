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
    
    static func parse(json: JSON) -> LifeRemain? {
        return LifeRemain(years: json["years"].int,
                          months: json["months"].int,
                          days: json["days"].int,
                          hours: json["hours"].int,
                          minutes: json["minutes"].int,
                          seconds: json["seconds"].int)
    }
    
}
