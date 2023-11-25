import UIKit

//Create a Person value type with the following attributes and behaviors:
// Attributes: name, age, height, weight
// Behaviors:
//    greeting: Print "Hello, my name is <name>, and I am <age> years old."
//    birthday: Increase age by one
//    growUp: Increase height by 0.1


struct Person {
    let name:String
    var age:Int
    var height:Double
    var weight:Int
    
    func greeting() {
        print("Hello, my name is \(name), and i am \(age) years old")
    }
    mutating func birthday() {
        age += 1
    }
    mutating func growUp() {
        height += 0.1
    }
}

var jessie = Person(name: "Jessie", age: 21, height: 72, weight: 176)

jessie.greeting()
print(jessie.age)
jessie.birthday()
print(jessie.age)
print(jessie.height)
jessie.growUp()
print(jessie.height)
