import Foundation

/*
 If you wants a function that returns more than one piece of data, use Tuple.
 Tuple is one piece of data which has multiple peices of data inside.
 */

var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
    // return userName
    userName // return can be omitted.
}

func getUserIsPremium() -> Bool {
    return userIsPremium
}

func getUserInfo() -> String { // limited to 1 return type.
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return name
}

// In order to return both name and isPremium, we need tuple.
// Tuple can combine multiple pieces of data.
func getUserInfo2() -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium) // return both String and Bool.
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew) // tuples

let info1 = getUserInfo2()
let name1: String = info1.0

func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name

func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {
    
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)
