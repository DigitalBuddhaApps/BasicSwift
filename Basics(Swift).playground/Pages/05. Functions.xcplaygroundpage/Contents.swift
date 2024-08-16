import Foundation

var myItem: Bool = false
myItem = true
print(myItem)

// how app works? the files are going to have a series of objects and functions.
// your whole app is actually a chain of functions that starts with one function.

func myFirstFunction() {
    // this closure will only execute when we call this function.
    print("MY FIRST FUNCTION CALLED.") // this won't execute as it is not calling the function yet.
}

func mySecondFunction() {
    print("MY SECOND FUNCTION CALLED.")
}

myFirstFunction() // this line is 'calling the function'.
mySecondFunction()

func myChainedFunction() { // Chain -> function inside function
    mySecondFunction()
}
myChainedFunction() // 'calling the funciton'

let funcOutsideClosure = "Outside" // public function, which can be called either inside or outside of closure.
func getUserName() {
    let username = "Nick" // constant inside closure, which is private to this closure and cannot be accessed outside the closure.
    print(username)
    print(funcOutsideClosure) // called the public function inside closure.
}
getUserName()
print(funcOutsideClosure) // called the public function outside closure.

func getString() -> String { // -> indicates 'return'. This function returns string.
    let returningString = "Pls return a string."
    return returningString
}
print(getString())

func checkIfUserIsPremium() -> Bool {
    return false
}
let name: String = getString()

// -----------------

var userDidCompleteOnBoarding: Bool = false // public variable
var userProfileIsCreated: Bool = true // public variable

func checkUserStatus() -> Bool {
    if userDidCompleteOnBoarding && userProfileIsCreated { // calling the public variables inside this closure.
        return true
    } else {
        return false
    }
}

//--------

showFirstScreen()

func showFirstScreen() {
    var userComplete: Bool = false
    var userProfile: Bool = true
    
    // we are going to pass in 'didComplete' and 'profileCreated' to perform checkUserStatus2 function.
    let status = checkUserStatus2(didComplete: userComplete, profileCreated: userProfile)
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}

// passing data from one function to another by updating the initializer.
func checkUserStatus2(didComplete: Bool, profileCreated: Bool) -> Bool { // not necessary have to be Boolean, we can pass in strings or numbers.
    if didComplete && profileCreated { // return false because 'userComplete' is false.
        return true
    } else {
        return false
    }
}

//-------

func doNothing() -> Void { // don't do anything is the same thing as returning void. Void means 'returning nothing'. Void can be omitted.
}

doExecute()
func doExecute() {
    print("EXECUTE 1")
}

doSomething()
func doSomething() {
    var isNew: Bool = false
    if isNew {
       // print("NEW")
    } else {
        print("NOT NEW")
    }
}

doString()
func doString() -> String {
    var title: String = "Avengers"
    
    // "If title is equal to Avengers, then execute this code"
    if title == "Avengers" {
        return "Marvel" // once returned with a value, we are done with this function.
    } else {
        return "Not Marvel"
    }
}

//------

doSomethingElse()
func doSomethingElse() {
    var title: String = "Avengers"
    
    // Make sure title is equals to Avengers.
    guard title == "Avengers" else { // use "guard" to make sure it is true. If false we only enter the closure.
        print("Not Marvel")
        return // it is going to get out of this function
    }
    print("Marvel")
}

checkIfTitleIsAvengers()
func checkIfTitleIsAvengers() -> Bool {
    var title: String = "Avengers"
    guard title == "Avengers" else {
        return false
    }
    return true
}

func checkIfTitleIsAvengers2() -> Bool {
    var title: String = "Avengers2"
    if title == "Avengers2" {
        return true
    } else {
        return false
    }
}

//------

// "Calculated Variables" are basically functions
// Generally goof for when you don't need to pass data into the function.
let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)

var calculatedNumber: Int {
    return number1 + number2
}
