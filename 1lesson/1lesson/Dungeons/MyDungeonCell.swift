//
//  MyDungeonCell.swift
//  1lesson
//
//  Created by Kir S on 22.04.2021.
//

import UIKit

class MyDungeonCell: UITableViewCell {
    
    let gradient = CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.insertSublayer(gradient, at: 0)//addSublayer(gradient)
        gradient.colors = [
            UIColor.gray.cgColor,
            UIColor.gray.withAlphaComponent(0.5).cgColor
        ]
        gradient.startPoint = CGPoint(x: 0.1, y: 1.0)
        gradient.endPoint = CGPoint(x: 0.1, y: 0.0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradient.frame = contentView.bounds
    }

    @IBOutlet weak var dungLabel: UILabel!
    
    @IBOutlet weak var dungpic: UIImageView!
}
