//
//  Parseable.swift
//  Remainder
//
//  Created by Sam Wu on 7/2/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation

protocol Parseable {
    associatedtype ParserType = Parser
}

protocol Parser {
    static func parse(data: Data?, request: Request?) -> AnyObject?
}
