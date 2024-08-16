import Foundation

// Constant -> cannot change once set.
let someConstant: Bool = true

// Variable -> can be changed later.
var someVariable: Bool = true
someVariable = false

var myNumber = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)

// if statements
var userIsPremium: Bool = true

if userIsPremium == true { // this is a closure signaled by {}.
    // the codes inside this closure will only execute if userIsPremium is true.
    print("1 - user is premium")
} else {
    print("1.1 - user is not premium")
}

if userIsPremium { // this bool is assume to be true. Same as above.
    print("2 - user is premium")
}

if userIsPremium == false {
    print("3 - user is NOT premium")
}

// ! means NOT
if !userIsPremium {
    print("4 - user is NOT premium")
}
