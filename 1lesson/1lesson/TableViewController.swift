//
//  TableViewController.swift
//  1lesson
//
//  Created by Kir S on 16.04.2021.
//

import UIKit

class TableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem()
        
        navigationController?.navigationItem.hidesBackButton = true
    }
}





