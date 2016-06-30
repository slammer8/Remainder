//
//  Request.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Alamofire

protocol Request {
    
    var baseURL: String { get }
    
    var path: String { get }
    
    var method: Alamofire.Method { get }
    
    var parameters: [String: AnyObject] { get }
    
    var headers: [String: String] { get }
}

extension Request {
    
    var method: Alamofire.Method {
        return .GET
    }
    
    var absoluteURL: URL {
        return URL(string: baseURL + path)!
    }
    
    var headers: [String: String] {
        return [:]
    }
    
}
