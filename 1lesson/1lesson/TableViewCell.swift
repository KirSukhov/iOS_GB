//
//  TableViewCell.swift
//  1lesson
//
//  Created by Kir S on 19.04.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var labelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
