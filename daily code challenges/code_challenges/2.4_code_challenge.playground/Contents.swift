import UIKit

class Person {
    var age: Int
    var name: String
    var weight: Int
    var favoriteColor: String
    
    init(age: Int, name: String, weight: Int, favoriteColor: String){
        self.age = age
        self.name = name
        self.weight = weight
        self.favoriteColor = favoriteColor
    }
}

class student:Person {
    var currentClass: String
    var grade: Int
    var GPA: Double
    
init(age: Int, name: String, weight: Int, favoriteColor: String, currentClass: String, grade: Int, GPA: Double) {
    self.currentClass = currentClass
    self.grade = grade
    self.GPA = GPA
        super.init(age: age, name: name, weight: weight, favoriteColor: favoriteColor)
    }
}
