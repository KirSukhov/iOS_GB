//
//  AllDangeonsController.swift
//  1lesson
//
//  Created by Kir S on 21.04.2021.
//

import UIKit

class AllDangeonsController: UITableViewController {
    
    
    var newDung : [Group] = [
        Group (name: "Deadmines", avatar: "deadmines"),
        Group (name: "Scarlet Monastery", avatar: "scarlet"),
        Group (name: "ZulGurub", avatar: "zulgurub"),
        Group (name: "Naxxramas", avatar: "naxxramas")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
       

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newDung.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllDangeonsCell", for: indexPath) as! AllDangeonsCell
        let dungeon = newDung[indexPath.row]
        cell.dungeonLabel.text = dungeon.name
        cell.dungeonPict.image = dungeon.avatar
        return cell
    }
    

    

}
