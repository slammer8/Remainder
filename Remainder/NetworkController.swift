//
//  NetworkController.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Alamofire

/// Peforms a network request and returns a response.
final class NetworkController {
    
    /*
     Peforms a network request the provided request
     
     parameters:
     - request: the request to perform.
     - completion: the completion block to call.
     
     returns: a response, if any
     
     */
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
