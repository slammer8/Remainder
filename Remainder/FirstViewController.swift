//
//  FirstViewController.swift
//  Remainder
//
//  Created by Sam Wu on 6/29/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        performRequest()
        
    }

    private func performRequest() {
        let calendar = Calendar.current()
        
        var components = DateComponents()
        components.year = 1983
        components.month = 9
        components.day = 13
        
        guard let date = calendar.date(from: components) else { return }
        
        let lifeLeftRequest = MashapeRequest.lifeLeft(birthDate: date, gender: .male)
        
        let modelObjectUpdater = ModelObjectUpdater<LifeStatistic>()
        
        modelObjectUpdater.performRequest(request: lifeLeftRequest) { result in
            
            switch result {
            case let .success(lifeStatistic):
                print(lifeStatistic.currentAge)
            case .failure:
                print("failure")
            }
            
        }
    }
}
