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
    
}

extension Request {
    
    var baseURL: String {
        return "www.google.com"
    }
    
    var method: Alamofire.Method {
        return .GET
    }
    
    var absoluteURL: String {
        return baseURL + path
    }
    
}
