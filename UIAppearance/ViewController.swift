//
//  ViewController.swift
//  UIAppearance
//
//  Created by Elias Medeiros on 07/04/2018.
//  Copyright © 2018 CWI Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: outlets
    @IBOutlet weak var tableView: UITableView!
    
    let dataSource: DataSourceProtocol = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self.dataSource
        
        if #available(iOS 11.0, *) {
            self.configureSearchBar()
        }
        
    }
    
    @available(iOS 11.0, *)
    func configureSearchBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        
        self.navigationItem.searchController = search
    }

    var editTimer: Timer?

}

extension ViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        self.editTimer?.invalidate()
        self.editTimer = Timer.scheduledTimer(
            timeInterval: 0.8,
            target: self,
            selector: #selector(self.editingHasEnded),
            userInfo: searchController.searchBar.text,
            repeats: false
        )
        
        
    }
    
    @objc func editingHasEnded() {
        if let text = self.editTimer?.userInfo as? String {
            self.dataSource.filter(withText: text)
            self.tableView.reloadData()
        }
    }
    
}
