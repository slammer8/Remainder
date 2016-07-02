//
//  Result.swift
//  Remainder
//
//  Created by Sam Wu on 7/2/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

public enum Result<T>
{
    case success(result: T)
    
    case failure(error: ErrorProtocol)
}
