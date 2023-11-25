import UIKit

func rps(hand1: String) -> String {
    var hand2: [String] = ["rock", "paper", "scissors"].randomElement()
    guard hand1 != hand2 else { return "draw"}
    if hand1 == "rock" && hand2 == "scissors" {
        return "hand 1 wins"
    } else if hand1 == "paper" && hand2 == "rock" {
        return "hand 1 wins"
    } else if hand1 == "scissors" && hand2 == "paper" {
        return "hand 1 wins"
    } else {
        return "hand 2 wins"
    }
}

rps(hand1: "rock")


