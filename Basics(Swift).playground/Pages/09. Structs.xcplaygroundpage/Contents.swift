import Foundation

/*
 Structs are fast!
 Structs are stored in the Stack (memory)
 Objects in the Stack are Value types.
 Therefore, "Struct" are "Value" types.
 "Value" types are copied and mutated.
 */
let myObject: String = "Hello, world!"

// ----- Eg:1
struct QuizA {
    let title: String // the title here is 'self'.
    let dateCreated: Date
    
    // Structs have an implicit init
    init(title: String, dateCreated: Date) {
        self.title = title // self means the title from 'let', not 'init' title.
        self.dateCreated = dateCreated
    }
}

let myQuizA: QuizA = QuizA(
    title: "Quiz A",
    dateCreated: .now
)
print(myQuizA.title)


// ------ Eg:2
struct QuizB {
    let title: String
    let dateCreated: Date
    
    // We can customize our own init:
    init(title: String, dateCreated: Date = .now) {
        self.title = title
        self.dateCreated = dateCreated
    }
}

let myQuizB: QuizB = QuizB(
    title: "Quiz B"
    //dateCreated can be omitted since it is already initialized in struct.
)
print(myQuizB.title)


// ----- Eg:3
struct QuizC {
    let title: String
    let dateCreated: Date
    let isPremium: Bool? // optional boolean
    
    init(title: String, dateCreated: Date = .now, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated
        self.isPremium = isPremium
    }
}

let myQuizC: QuizC = QuizC(
    title: "Quiz C",
    isPremium: true // You can either put tru, false or nil.
)
print(myQuizC.title)


// ----- Eg:4
struct QuizD {
    let title: String
    let dateCreated: Date
    let isPremium: Bool? // optional boolean
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now // it is either the version we passed in or .now
        self.isPremium = isPremium
    }
}

let myQuizD: QuizD = QuizD(
    title: "Quiz D",
    dateCreated: nil,
    isPremium: false // You can either put tru, false or nil.
)
print(myQuizD.title)


//-------
/*
 Since quizzes are value type, when we edit them we're actually copying and pasting them. This means to 'mutate' a Struct.
 */

// "Immutable Struct" = all "let" constants = NOT mutable.
struct UserModel { // UserModel is the data model for the user.
    let name: String // Every user has the name of type String.
    let isPremium: Bool
}

var user1: UserModel = UserModel(
    name: "Nick",
    isPremium: false
)

func markUserAsPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}
markUserAsPremium()

// --------
struct UserModel2 {
    let name: String
    var isPremium: Bool // use var so we can mutate the struct.
}

var user2 = UserModel2(
    name: "Nick",
    isPremium: false
)
func markUserAsPremium2() {
    print(user2)
    user2.isPremium = true // "mutate" the struct
    print(user2)
}
markUserAsPremium2()

// ---------
struct UserModel3 { // "immutable" struct, means everything must be constant. Use let.
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(
    name: "Nick",
    isPremium: true
)
user3 = user3.markUserAsPremium(newValue: true)

// ---------

// "mutable struct"
struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func markUserAsPremium() { // mutating telling that this function is going to mutate the struct itself .
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4 = UserModel4(
    name: "Nick",
    isPremium: false
)
user4.markUserAsPremium()
user4.updateIsPremium(newValue: true)

//------
struct User5 {
    let name: String
    let isPremium: Bool
    let isNew: Bool
    
}
