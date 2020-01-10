/*:
 # Monday Stretch Problem 2.1
 ## Properties { get set }
 ### Instructions - PART 1
 - Make a constant called `currentYear` that is an integer equal to the current year (e.g. 2016).
 - Create a `Person` struct with properties for first name as a `String`, last name as a `String`, and year of birth as an `Int`.
 - Create an instance of the `Person` struct
 - Print out the instance's birth year
 - Print out its first and last name
 
 ### Instructions - PART 2
  - Add a computed property for age to the `Person` struct
  - Implement a getter for `age`. The getter should calculate and return the person's age based on the current year and the person's year of birth. (Hint: Look up getters in the Swift programming guide or in documentation).
  - Implement a setter for `age`. The setter should update the year of birth based on the age and current year. (Hint: look up setters).
  - Print out the person's age
  - Update their age and then print their new year of birth.
 
 ### Black Diamond 💎💎💎
 Change your `currentYear` constant so that instead of being a hard-coded, static year, it uses `DateComponents` to get the actual current year anytime it runs. Documentation should help you out.
 */
import Foundation

let currentYear = Calendar.current.component(.year, from: Date())

struct Person {
    var firstName: String
    var lastName: String
    var birthYear: Int
    var age: Int {
        get {
            return currentYear - birthYear
        } set {
            birthYear = currentYear - newValue
        }
    }
}

var jon = Person(firstName: "Jon", lastName: "Corn", birthYear: 1993)

print(jon.birthYear)
print(jon.firstName)
print(jon.lastName)

jon.age = 3

print(jon.birthYear)


//: [Protocols](@next)
