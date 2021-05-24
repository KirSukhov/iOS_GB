//
//  Team.swift
//  1lesson
//
//  Created by Kir S on 22.04.2021.
//

import UIKit

final class Team {
    var name : String
    var avatar : UIImage?
    var photos : [UIImage] = []
    
    init(name : String, avatar : String) {
        self.name = name
        let img = UIImage(named: avatar)
        self.avatar = img
        if let unwrappedImage = img {
            self.photos = Array(repeating: unwrappedImage, count: 4)
        }
    }
}

