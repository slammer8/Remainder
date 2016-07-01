//
//  MashapeRequest.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation

/// A Mashape request.
enum MashapeRequest: Request {
    
    private static let DateFormat = "dd MMMM yyyy"
    
    /// The life left request.
    case lifeLeft (birthDate: Date, gender: Gender)
    
    var baseURL: String {
        return "https://life-left.p.mashape.com"
    }
    
    var path: String {
        return "/time-left"
    }
    
    var parameters: [String : NSObject] {
        switch self {
        case let lifeLeft (birthDate, gender):
            return ["birth": birthDate.convertUsingDateFormat(self.dynamicType.DateFormat),
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
