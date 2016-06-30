//
//  MashapeRequest.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation

enum MashapeRequest: Request {
    
    case lifeLeft (birthDate: Date, gender: Gender)
    
    var baseURL: String {
        return "https://life-left.p.mashape.com"
    }
    
    var path: String {
        return "/time-left"
    }
    
    var parameters: [String : AnyObject] {
        switch self {
        case let lifeLeft (birthDate, gender):
            return ["birth": birthDate.convertUsingDateFormat("dd MMMM yyyy"),
                    "gender": gender.rawValue]
        }
    }
    
    var headers: [String: String] {
        switch self {
        case lifeLeft:
            return ["X-Mashape-Key": APIKeys.mashape.rawValue,
                    "Accept": "application/json"]
        }
    }
    
}
