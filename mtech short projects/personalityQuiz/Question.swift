//
//  Question.swift
//  personalityQuiz
//
//  Created by Paul Stewart on 9/26/23.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischeivous yet mild-tempered, you enjoy doing things in your own times"
        case .turtle:
            return "You love everything that's soft. You are healthy and full of energy."
        case .rabbit:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race"
        }
    }
    var emoji: String {
        switch self {
        case .dog:
            return "🐶"
        case .cat:
            return "🐱"
        case .turtle:
            return "🐢"
        case .rabbit:
            return "🐰"
        }
    }
}
