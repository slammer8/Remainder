//
//  NetworkController.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Alamofire


final class NetworkController {
    
    static func performRequest(request: Request, completion: (request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: NSError?) -> Void) {
    
        var urlRequest = URLRequest(url: request.absoluteURL)
        
        if !request.headers.isEmpty {
            for (key, value) in request.headers {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        let encoding = Alamofire.ParameterEncoding.urlEncodedInURL
        
        var (encodedRequest, _) = encoding.encode(urlRequest, parameters: request.parameters)
        
        encodedRequest.httpMethod = request.method.rawValue
        
        Alamofire.request(encodedRequest)
            .validate()
            .response(completionHandler: completion)
        }

}
