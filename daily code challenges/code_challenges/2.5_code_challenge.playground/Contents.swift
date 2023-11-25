import UIKit

func distanceBetweenTwoPoints (x1: Double, y1: Double, x2: Double, y2: Double) -> Double {
    
    return (pow((x2-x1), 2.0) + pow((y2-y1), 2.0)).squareRoot()
}


print(distanceBetweenTwoPoints(x1: 5.0, y1: -6.0, x2: 4, y2: 3))


