import UIKit

func findingVolumes(cube1: [Int], cube2: [Int]) -> Int {
    var volume1 = cube1[0] * cube1[1] * cube1[2]
    var volume2 = cube2[0] * cube2[1] * cube2[2]
    return abs(volume1 - volume2)
}

let difference = findingVolumes(cube1: [1, 2, 3], cube2: [2, 2, 3])

print(difference)
