//
//  Teammates.swift
//  1lesson
//
//  Created by Kir S on 20.05.2021.
//

import Foundation

class TeammatesFactory {
    static func getTeammate() -> [Team] {
        return [
            Team (name: "Bolvar", avatar: "bolvar"),
            Team (name: "Sylvanas", avatar: "sylvanas"),
            Team (name: "Moira", avatar: "moira"),
            Team (name: "Artas", avatar: "artas"),
            Team (name: "Tyrande", avatar: "tyrande"),
            Team (name: "Anduin", avatar: "anduin"),
            Team (name: "Thrall", avatar: "thrall"),
            Team (name: "Jaina", avatar: "jaina"),
            Team (name: "Alexstrasza", avatar: "alexstrasza"),
            Team (name: "Illidan", avatar: "illidan"),
            Team (name: "Aszhara", avatar: "aszhara"),
            Team (name: "Voljin", avatar: "voljin"),
            Team (name: "KellThuzad", avatar: "kelltuzed")
        ]
    }
}
