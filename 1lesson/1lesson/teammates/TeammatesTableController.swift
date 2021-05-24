//
//  TeammatesTableController.swift
//  1lesson
//
//  Created by Kir S on 21.04.2021.
//

import UIKit

struct Section<T> {
    var title: String
    var items: [T]
}


class TeammatesTableController: UITableViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var teamSection = [Section<Team>]()
    
    var teammates = TeammatesFactory.getTeammate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        makeSortedSections()
    }
    
    private func makeSortedSections() {
        let teamDictionary = Dictionary.init(grouping: teammates) { $0.name.prefix(1)}
        teamSection = teamDictionary.map { Section(title: String($0.key), items: $0.value) }
        teamSection.sort { $0.title < $1.title }
    }
    
    //кол-во строк таблицы
    override func numberOfSections(in tableView: UITableView) -> Int {
        return teamSection.count
    }

   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return teamSection[section].items.count
   }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.darkGray
        
        let label = UILabel()
        label.text = teamSection[section].title
        label.frame = CGRect(x: 12, y: 7, width: 15, height: 15)
        label.textColor = UIColor.white
        label.adjustsFontSizeToFitWidth = true
        view.addSubview(label)
        return view
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //было без guard
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TeammatesTableCell", for: indexPath) as? TeammatesTableCell else {
            return UITableViewCell() }
        
        let teammate = teamSection[indexPath.section].items[indexPath.row].name
        let ava = teamSection[indexPath.section].items[indexPath.row].avatar
        cell.charname.text = teammate
        cell.charavatar.image = ava
        //let teammate = teammates[indexPath.row]
        //cell.charname.text = "\(teammate.name)"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "photoTeamSegue" {
            let photoAlbumTeam = segue.destination as! TeammatesViewController
            if let index = tableView.indexPathForSelectedRow {
                let team = teammates[index.row]
                photoAlbumTeam.photos = team.photos
                photoAlbumTeam.title = "\(team.name)"
            }
        }
    }
    //боковой контрол по алфовиту
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return teamSection.map { $0.title }
    }
}

extension TeammatesTableController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let teamDictionary = Dictionary.init(grouping: teammates.filter {(user) -> Bool in
            return searchText.isEmpty ? true: user.name.lowercased().contains(searchText.lowercased())
        }) { $0.name.prefix(1) }
            teamSection = teamDictionary.map { Section(title: String($0.key), items: $0.value) }
            teamSection.sort { $0.title < $1.title }
        tableView.reloadData()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.endEditing(true)
        print("searched")
    }
}

