//
//  Group.swift
//  1lesson
//
//  Created by Kir S on 22.04.2021.
//

import UIKit

class Group {
    var name : String
    var avatar : UIImage?
    
    init(name : String, avatar : String) {
        self.name = name
        self.avatar = UIImage(named: avatar)
 
        }
}
extension Group : Equatable {
   static func == (lhs: Group, rhs: Group) -> Bool {
       lhs.name == rhs.name && lhs.avatar == rhs.avatar
        }
    }

