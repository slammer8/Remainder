//
//  RemainderTests.swift
//  RemainderTests
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import XCTest
@testable import Remainder

final class MashapeRequestTest: XCTestCase {
    
    func testRequestBuildsCorrectly() {

        let calendar = Calendar.current
        
        var components = DateComponents()
        components.year = 1986
        components.month = 7
        components.day = 8
        
        guard let date = calendar.date(from: components) else {
            XCTFail("Date not created correctly")
            return
        }
        
        let lifeLeftRequest = MashapeRequest.lifeLeft(birthDate: date, gender: .female)
        
        XCTAssertEqual(lifeLeftRequest.absoluteURL.absoluteString,
                       "https://life-left.p.mashape.com/time-left")
        XCTAssertEqual(lifeLeftRequest.parameters,
                       ["birth":"08 July 1986", "gender":"female"] as [String: NSObject])
        XCTAssertEqual(lifeLeftRequest.headers,
                       ["X-Mashape-Key": APIKeys.mashape.rawValue,
                        "Accept": "application/json"])
    }
    
}
