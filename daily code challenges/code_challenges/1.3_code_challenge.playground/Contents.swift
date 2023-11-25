import UIKit

struct Valorant {
    var roundWin: Int
    var roundLoss: Int
    var totalScore: String
    
    mutating func loseRound() {
        roundLoss += 1
        self.totalScore = "\(roundWin), \(roundLoss)"

        if (roundWin + roundLoss) == 12 {
            print("switching sides")
        }
    }
    mutating func winRound() {
        roundWin += 1
        self.totalScore = "\(roundWin), \(roundLoss)"

        if (roundWin + roundLoss) == 12 {
            print("Switching sides")
        }
    } 
    
     
    
    init() {
        self.roundWin = 0
        self.roundLoss = 0
        self.totalScore = "\(roundWin), \(roundLoss)"
    }
    
}

var game = Valorant()

game.winRound()

print(game.totalScore)

game.loseRound()
print(game.totalScore)
