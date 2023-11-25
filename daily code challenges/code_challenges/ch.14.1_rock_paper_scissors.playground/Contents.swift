import UIKit

// Rock, Paper, Scissors
// Create a function that takes in two strings. The strings will be either "rock", "paper", or "scissors"
// Determine who wins and return a string saying who won
// Examples(Input1, Input2 --> Output):
// "scissors", "paper" --> "Player 1 won!"
// "scissors", "rock" --> "Player 2 won!"
// "paper", "paper" --> "Draw!"

func rps(p1: String, p2: String) -> String {
    guard p1 != p2 else { return "draw"}
    switch p1 {
    case "rock":
        if p2 == "paper" {
            return "P2 wins!"
        } else {
            return "P1 wins!"
        }
    case "paper":
        if p2 == "rock" {
            return "P1 wins!"
        } else {
            return "P2 wins!"
        }
    case "scissors":
        if p2 == "rock" {
            return "P2 wins!"
        } else {
            return "P1 wins!"
        }
    default:
        return {
            "Please enter valid rock paper scissors input"
        }
    }
}

rps(p1: "paper", p2: "scissors")
