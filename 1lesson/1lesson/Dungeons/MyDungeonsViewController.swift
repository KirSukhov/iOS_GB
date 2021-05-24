//
//  MyDungeonsViewController.swift
//  1lesson
//
//  Created by Kir S on 21.04.2021.
//

import UIKit

class MyDungeonsViewController: UITableViewController {
    
    var dungeons = [Group]()
    
    var customRefreshControl = UIRefreshControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        addRefreshControll()
    }

    func addRefreshControll() {
        customRefreshControl.attributedTitle = NSAttributedString(string: "loading...")
        customRefreshControl.addTarget(self, action: #selector(refreshTable), for: .valueChanged)
        tableView.addSubview(customRefreshControl)
    }
    
    @objc func refreshTable() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.customRefreshControl.endRefreshing()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dungeons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyDungeonsCell", for: indexPath) as! MyDungeonCell
        let dung = dungeons[indexPath.row]
        cell.dungLabel.text = dung.name
        cell.dungpic.image = dung.avatar
        return cell
    }

    @IBAction func addDungeon(segue: UIStoryboardSegue) {
        if segue.identifier == "addDungeon" {
            let allDungeonsController = segue.source as! AllDangeonsController
            if let indexPath = allDungeonsController.tableView.indexPathForSelectedRow {
                let dung = allDungeonsController.newDung[indexPath.row]
                if !dungeons.contains(dung) {
                    dungeons.append(dung)
                    tableView.reloadData()
                }
            }
    }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dungeons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    
}

}
