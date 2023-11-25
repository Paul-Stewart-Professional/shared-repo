/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    static func < (lhs: Human, rhs: Human) -> Bool {
        lhs.age < rhs.age
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    var description: String {
        return "Name: \(name), Age: \(age)"
    }
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var me = Human(name: "Paul", age: 17)
var someoneElse = Human(name: "John Doe", age: 33)
var yourMother = Human(name: "Ur mom", age: 100)
var derreck = Human(name: "Derrek", age: 43)
var jane = Human(name: "Jane", age: 24)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(me)
print(someoneElse)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
if me != someoneElse {
    print("we are not the same")
}

//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
var people: [Human] = [me, someoneElse, yourMother, derreck, jane]
var sortedPeople: [Human] = people.sorted()
print(sortedPeople)
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(me),
let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
