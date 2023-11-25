import UIKit

func findTriangleArea(sideA: Double, sideB: Double, sideC: Double) -> Double {
    var s = (sideA + sideB + sideC) / 2
    var area = sqrt(s * (s - sideA) * (s - sideB) * (s - sideC))
    let formattedArea = String(format: "%.2f", area)
    return Double(formattedArea)!
}


findTriangleArea(sideA: 4, sideB: 3, sideC: 2)
