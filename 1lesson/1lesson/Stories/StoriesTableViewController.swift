//
//  StoriesTableViewController.swift
//  1lesson
//
//  Created by Kir S on 20.05.2021.
//

import UIKit

class StoriesTableViewController: UITableViewController {
    
    var storyArray = [1,2,3,4,5,6]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 100.0
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storyArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesCell", for: indexPath) as! StoriesCell
        cell.story.text = " After these events, news came to Sylvanas about the discovery of azerite in Silithus. Recognizing its power, she grew concerned as to the safety of the Horde should the Alliance get their hands on it as well. Recognizing Teldrassil as the main shipping route for the Alliance in Kalimdor, she resolved to end a potential war before it could begin. Thus, she conferred with Varok Saurfang and Nathanos Blightcaller, weaving together a feint that would make the Alliance think she was taking the bulk of her forces to Silithus to safeguard the azerite. Varok himself was instrumental in the formation of this plan. "
        return cell
    }
    
    
    
}
