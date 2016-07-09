//
//  ModelObjectUpdater.swift
//  Remainder
//
//  Created by Sam Wu on 7/1/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation
import SwiftyJSON

final class ModelObjectUpdater<T:Parseable> {
    
    func performRequest(request: Request, completion: (Result<T>) -> Void) {
        
        NetworkController.performRequest(request: request) { (URLRequest, response, data, error) in
            
            if let error = error {
                completion(Result.failure(error: error))
            }
            
            guard let object = T.ParserType.parse(data: data, request: request) else {
                
                let error = NSError(domain: "Parsing error", code: -1, userInfo: nil)
                completion(Result.failure(error: error))
            }
            
            completion(Result.success(result: object))
        }
    }
    
}
