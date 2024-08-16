import Foundation

/*
- Optional is a piece of data that may or may not have a value. Use optionals in case there is no data.
- Boolean can only have true or false; but an 'optional boolean' will have true, false or nil.
- Unwrapped Optional to make it no longer an Optional. There are both safe and unsafe ways to do that, we must learn the safe way to avoid crash in our app. Unwrap optionals is the core component of writing good swift language.
- This example teach us how to use functions to unwrap optionals safely.
 */

// "There is always a value and it is a Boolean."
let myBool: Bool = false // this statement of type Bool but without an optional can only be false.

// "We don't know if there is a value, but if there is, it is a Boolean."
// ? indicates optional Bool. Optional gives you options.
var myOtherBool: Bool? = nil
let newValue: Bool? = myOtherBool

// ?? is actually a 'nil coalescing' operator, which means otherwise.
// This means that "The value of myOtherBool (if there is one)", otherwise false.
let newValue2: Bool = myOtherBool ?? false
print("New value 2: \(newValue2.description)")

//---- try another example of nil coalescing:
var myOtherBoolA: Bool? = true
let newValue2A: Bool = myOtherBoolA ?? false
print("New value 2A: \(newValue2A.description)")

// any type can be optional as long as you put a ?
var myString: String? = nil

// let newString equals myString otherwise 'some default value'
let newString = myString ?? "some default value"
print(newString)

// ------example: using myStringA
var myStringA: String? = "Hello, world!"
print(myStringA ?? "There is no value!")

myStringA = "New text!"
print(myStringA ?? "There is no value!")

myStringA = nil
print(myStringA ?? "There is no value!")

// ---------
var userIsPremium: Bool? = nil // make it optional Bool and set it to nil.
func checkIfUserIsPremium() -> Bool? {
    // wants to return a Bool whether true or false.
    // return userIsPremium
    userIsPremium // exclude 'return' as it is already known.
}
let isPremium = checkIfUserIsPremium()

func checkIfUserIsPremium2() -> Bool {
    userIsPremium ?? false
}
let isPremium2 = checkIfUserIsPremium2()

// 'if let'
// When 'if-let' is successful, enter the closure.
func checkIfUserIsPremium3() -> Bool {
    // To use 'if let' -> 'if' there is a value, 'let' newValueB equal that value.
    if let newValueB = userIsPremium { // this is the way to unwrap optional.
        // Here we have access to the non-optional value.
        return newValueB
    } else {
        return false
    }
}

func checkIfUserIsPremium4() -> Bool {
    if let newValueC = userIsPremium { // if we get a value, we are going to fall into this closure; else it's going to be the 'dafault' case of false.
        return newValueC
    }
    return false
}

func checkIfUserIsPremium5() -> Bool {
    if let userIsPremium { // if userIsPremium (is a non-optional Bool) does have a value
        return userIsPremium
    }
    return false
}

// Guard
// When a 'guard' is a failure, then enter the closure.
func checkIfUserIsPremium6() -> Bool {
    // Use 'guard' to make sure there is a value for userIsPremium.
    // If there is a value, let newValueD equals that value.
    // Else (otherwise) return out of the function.
    guard let newValueD = userIsPremium else {
        // If there is no value, we enter this closure.
        return false
    }
    return newValueD // Here we have access to the non-optional value.
}

func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}

//------

var userIsNew: Bool? = true // ? indicates optional Bool.
var userDidCompleteOnboarding: Bool? = false
var userFavouriteMovie: String? = nil

func checkIfUserIsSetup() -> Bool {
    
    // constant 'isNew'.
    // if there is a value in userIsNew, let's create a new consonant called isNew...
    if  let isNew = userIsNew,
        let didCompleteOnBoarding = userDidCompleteOnboarding,
        let favoriteMovie = userFavouriteMovie {
        // All 3 of these need to have a value, before it can enter this closure.
        /*
         userIsNew == Bool AND
         userDidCompleteOnboarding == Bool AND
         userFavouriteMovie == String
         */
        return getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: didCompleteOnBoarding, userFavouriteMovie: favoriteMovie)
    } else {
        // If either 1 of the above 3 don't succeed, it will go into this else closure.
        /*
         userIsNew == nil OR
         userDidCompleteOnboarding == nil OR
         userFavouriteMovie == nil
         */
        return false
    }
}

//------
// Simplify above example:
func checkIfUserIsSetupA() -> Bool {
    
    if  let userIsNew,
        let userDidCompleteOnboarding,
        let userFavouriteMovie {
    
        return getUserStatus( // we have 3 parameters here.
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavouriteMovie: userFavouriteMovie
        )
    } else {
        return false
    }
}

//------
func checkIfUserIsSetup2() -> Bool {
    
    guard let userIsNew, let userDidCompleteOnboarding, let userFavouriteMovie else {
        return false
    }
    return getUserStatus( // we have 3 parameters here.
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavouriteMovie: userFavouriteMovie
    )
}

//-----

/*
 This function needs to know:
    - whether userIsNew is true or false?
    - whether userDidCompleteOnboarding is true or false?
    - whether userFavouriteMovie is true or false?
 */
func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavouriteMovie: String) -> Bool {
    /* We give:
        - userIsNew with type Bool;
        - userDidCompleteOnboarding with type Bool;
        - userFavouriteMovie with type String;
     */
    if userIsNew && userDidCompleteOnboarding {
        // if both userIsNew and userDidCompleteOnboarding are true,
        return true
    }
    return false // else return false.
}

// -------

// layered if-let
func checkIfUserIsSetup3() -> Bool {
    
    if let userIsNew { // userIsNew == Bool
        
        if let userDidCompleteOnboarding { // userDidCompleteOnboarding == Bool
            
            if let userFavouriteMovie { // userFavouriteMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavouriteMovie: userFavouriteMovie
                )
            } else { // userFavouriteMovie == nil
                return false
            }
            
        } else { // userDidCompleteOnboarding == nil
            return false
        }
        
    } else { // userIsNew == nil
        return false
    }
}

// layered guard-let
func checkIfUserIsSetup4() -> Bool {
    
    guard let userIsNew else { // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    
    guard let userDidCompleteOnboarding else { // userDidCompleteOnboarding == nil
        return false
    }
    // userDidCompleteOnboarding == Bool
    
    guard let userFavouriteMovie else { // userFavouriteMovie == nil
        return false
    }
    // userFavouriteMovie == String
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavouriteMovie: userFavouriteMovie
    )
}

// layered guard-let
func checkIfUserIsSetup5() -> Bool {
    
    guard let userIsNew else {
        return false
    }
    
    guard let userDidCompleteOnboarding else {
        return false
    }
    
    guard let userFavouriteMovie else {
        return false
    }
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavouriteMovie: userFavouriteMovie
    )
}

// Optional Chaining
func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    let username: String? = getUsername()
    let count: Int? = username?.count // "I will get the count if the username is not nil."
    
    let title: String = getTitle()
    let count2 = title.count // "I will get the count always."
    
    // This is an optional chaining where to chain optional together.
    let firstCharacterIsLoweredcased = username?.first?.isLowercase ?? false
    // if we get a value for 'username' and 'first', then return the value of isLowercase.
    
    // I will get the count because I know 100% that username is not nil. But this will crash your app if username is not nil.
    let count3: Int? = username!.count // ! means explicit unwrapping.
}

/*
 There are 3 ways to safely unwrap optionals, it is:
 -> nil coalescing
 -> if-let
 -> guard
 */

/*
 Explicitly unwrap optionals (unsafe way):
- use !, but this not encouraged.
 */
