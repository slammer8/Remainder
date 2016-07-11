//
//  MeViewController.swift
//  Remainder
//
//  Created by Sam Wu on 7/11/16.
//  Copyright © 2016 BothPoints. All rights reserved.
//

import UIKit

final class MeViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        performRequest()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    private func performRequest() {
        let calendar = Calendar.current
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
                print("AAA \(lifeStatistic.currentAge)")
            case .failure:
                print("AAA failure")
            }
            
        }
    }

}
