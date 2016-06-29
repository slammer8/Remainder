//
//  NetworkController.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Alamofire


final class NetworkController {
    
    static func performRequest(request: Request) {
        
        var urlRequest = URLRequest(url: request.absoluteURL)
        urlRequest.setValue(APIKeys.mashape.rawValue, forHTTPHeaderField: "X-Mashape-Key")

        let encoding = Alamofire.ParameterEncoding.urlEncodedInURL
        
        var (encodedRequest, _) = encoding.encode(urlRequest, parameters: request.parameters)
        
        encodedRequest.httpMethod = request.method.rawValue
        
        Alamofire.request(encodedRequest)
            .validate()
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }

}
