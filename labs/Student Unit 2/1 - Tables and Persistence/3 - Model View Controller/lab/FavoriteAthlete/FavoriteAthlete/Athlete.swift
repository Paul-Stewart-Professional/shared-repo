//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Paul Stewart on 11/6/23.
//

import Foundation

struct Athlete {
    var name: String
    var age: Int
    var league: String
    var team: String
    var description: String {
        return "\(name) is \(age) years old, playing for \(team) in the \(league)."
    }

}

