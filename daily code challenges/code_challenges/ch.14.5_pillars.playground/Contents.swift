import UIKit

// There are pillars near the road. The distance between the pillars is the same and the width of the pillars is the same. Your function accepts three arguments:

// number of pillars (> 1);
// distance between pillars (10 - 30 meters);
// width of the pillar (10 - 50 centimeters).
// Calculate the distance between the first and the last pillar in centimeters (without the width of the first and last pillar).

func distanceBetween(pillars: Int, distance: Int, width: Int) -> Int? {
    guard pillars > 1, distance >= 10 && distance <= 30, width >= 10 && width <= 50 else { return nil }
    return (distance * (pillars - 1) + (pillars - 2) * width)
}

let answer = distanceBetween(pillars: 3, distance: 10, width: 10)
print(answer)
