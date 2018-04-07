//
//  DataSource.swift
//  UIAppearance
//
//  Created by Elias Medeiros on 07/04/2018.
//  Copyright © 2018 CWI Software. All rights reserved.
//

import UIKit

protocol DataSourceProtocol: UITableViewDataSource {
    
    func filter(withText: String)
    
}

class DataSource: NSObject, DataSourceProtocol {
    
    var data = [
        "Bertoldo Brecha",
        "Michael Corleone",
        "Afonso de Albuquerque",
        "Mario",
        "Paulo Polícia"
    ]
    
    lazy var filteredData = {
        return data
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = filteredData[indexPath.row]
        
        return cell
    }
    
    func filter(withText text: String) {
        self.filteredData = data.filter { item in
            return item.contains(text) || text.count == 0
        }
    }
    
    
}
