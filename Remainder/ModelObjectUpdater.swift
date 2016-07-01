//
//  ModelObjectUpdater.swift
//  Remainder
//
//  Created by Sam Wu on 7/1/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import Foundation

final class ModelObjectUpdater {
    
    // declare the type of object here
    
    
    func performRequest(request: Request) {
        NetworkController.performRequest(request: request) { (request, response, data, error) in
            
            // do the pass the returned object to the correct parser
            
            // pass the returned object back after parsing complete
            
        }
        
        
    }
    
    //persister
    //updater
    
    // perform request
    
    // perform and update
    
    //
}
