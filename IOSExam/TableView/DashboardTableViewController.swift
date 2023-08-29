//
//  DashboardTableViewController.swift
//  IOSExam
//
//  Created by Criselda Aguilar on 8/28/23.
//

import UIKit

class DashboardTableViewController: UITableViewController {
    
    @IBOutlet var dashboardTable: UITableView!
    
    enum Section {
        case main
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dashboardTable.separatorStyle = .none
        
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        dashboardTable.register(nib, forCellReuseIdentifier: "CustomCell")
        
        configureDataSource()
        dashboardTable.delegate = self
        dashboardTable.dataSource = dataSource
        
        applySnapshot()
    }
    
    var dataSource: UITableViewDiffableDataSource<Section, DataModel>!
    
    func configureDataSource() {
        dataSource = UITableViewDiffableDataSource<Section, DataModel>(
            tableView: tableView,
            cellProvider: { tableView, indexPath, item in
                // Dequeue the custom cell
                let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomTableViewCell
                
                cell.descriptionLabel.text = item.description
                return cell
            }
        )
    }
    
    func applySnapshot() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, DataModel>()
        snapshot.appendSections([.main])
        snapshot.appendItems([
            DataModel(id: 0, name: "shopee", description: "Shopee 100Php Off!", image: "url"),
            DataModel(id: 1, name: "shopee", description: "Shopee 100Php Off!", image: "url"),
            DataModel(id: 2, name: "shopee", description: "Shopee 100Php Off!", image: "url"),
            DataModel(id: 3, name: "shopee", description: "Shopee 100Php Off!", image: "url"),
            DataModel(id: 4, name: "shopee", description: "Shopee 100Php Off!", image: "url"),
            DataModel(id: 5, name: "zara", description: "Zara 200 Php Off!", image: "url")
        ], toSection: .main)
        dataSource.apply(snapshot, animatingDifferences: true)
    }
    
}
