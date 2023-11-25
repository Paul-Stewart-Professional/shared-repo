import UIKit


struct Rectangle {
    
    var sideA: Int
    var sideB: Int
    
    func area() -> Int {
        return sideA * sideB
    }
    
    func perimeter() -> Int {
        return 2 * (sideA + sideB)
    }
    
    mutating func scale(numberScaledBy: Int) {
        sideA *= numberScaledBy
        sideB *= numberScaledBy
    }
}


var myShape = Rectangle(sideA: 5, sideB: 4)
print(myShape.area())
myShape.scale(numberScaledBy: 10)
print(myShape.area())
