import UIKit

// Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.
// Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array:
// [sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep]      (YOU ARE HERE AT THE FRONT OF THE QUEUE)
//    7      6      5      4      3            2      1
// If the wolf is the closest animal to you, return "Pls go away and stop eating my sheep". Otherwise, return "Oi! Sheep number N! You are about to be eaten by a wolf!" where N is the sheep's position in the queue.
// Note: there will always be exactly one wolf in the array.
// Examples
// Input: ["sheep", "sheep", "sheep", "wolf", "sheep"]
// Output: "Oi! Sheep number 1! You are about to be eaten by a wolf!"
// Input: ["sheep", "sheep", "wolf"]
// Output: "Pls go away and stop eating my sheep"

func goAwayWolves(wolf: Int, herd: [Int]) -> String {
    var myHerd = herd
    var firstIsWolf = "Pls go away and stop eating my sheep"
    guard myHerd.last != wolf else {
    return firstIsWolf
}
    for _ in myHerd {
        myHerd.removeLast()
        if myHerd.last == wolf {
            myHerd.removeLast()
            break
        }
    }
    return "Oi sheep number \(String(describing: myHerd.last))! You are about to be eaten by a wolf!"
}

goAwayWolves(wolf: 5, herd: [1,2,3,4,5,6,7])
