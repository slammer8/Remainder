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
        
        urlRequest.httpMethod = request.method.rawValue
        
        let encoding = Alamofire.ParameterEncoding.urlEncodedInURL
        
        let (encodedRequest, _) = encoding.encode(urlRequest, parameters: request.parameters)
        
        Alamofire.request(encodedRequest)
            .validate()
            .response(completionHandler: completion)
        }

}
