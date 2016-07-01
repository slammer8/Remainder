//
//  Date+Convenience.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation

extension Date {
    
    /* Converts a Date object to a string representation.
     
     parameters:
     - format: The format requested using Unicode TR35-31.
     - formatter: An optional instance of DateFormatter.
     
     returns: A date string with the requested format.
    */
    func convertUsingDateFormat(_ format: String, formatter: DateFormatter = DateFormatter() ) -> String {
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
}
