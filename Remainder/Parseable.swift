//
//  Parseable.swift
//  Remainder
//
//  Created by Sam Wu on 7/2/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

protocol Parseable {
    associatedtype ParserType: Parser
}

protocol Parser {
    associatedtype ParsedObject = Parseable
    static func parse(data: Data?, request: Request?) -> ParsedObject?
}
