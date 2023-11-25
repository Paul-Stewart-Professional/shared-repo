//
//  player.swift
//  scoreKeeper
//
//  Created by Paul Stewart on 11/8/23.
//

import Foundation


struct Player: Equatable, Comparable {
    static func < (lhs: Player, rhs: Player) -> Bool {
        lhs.score < rhs.score
    }
    static func == (lhs: Player, rhs: Player) -> Bool {
        lhs.name == rhs.name
    }
    
    var name: String
    var score: Int
}

var arrayOfPlayers: [Player] = []
