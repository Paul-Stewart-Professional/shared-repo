/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    var RAM: Int
    var yearManufactured: Int
    init?(RAM: Int, yearManufactured: Int){
        if RAM > 0 && yearManufactured > 1970 && yearManufactured < 2023 {
            self.RAM = RAM
            self.yearManufactured = yearManufactured
        } else {
            return nil
        }
    }
}


//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
var comp1 = Computer(RAM: 32, yearManufactured: 2020)
var comp2 = Computer(RAM: 4, yearManufactured: 1969)

if let comp1 = comp1{
    print(comp1)
}
if let comp2 = comp2 {
    print(comp2)
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
