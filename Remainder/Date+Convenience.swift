//
//  Date+Convenience.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation

extension Date {
    
    func convertUsingDateFormat(_ format: String, formatter: DateFormatter = DateFormatter() ) -> String {
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
}
