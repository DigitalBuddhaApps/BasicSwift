/*
Flashback:
 - Tuples: combining multiple pieces of data into one piece of data.
 - Custom types: can have a bunch of pieces of data inside them.
 - Arrays are more common than Sets in real apps.
 
 Arrays: an ordered list with all it's object in order. To access items in array, we need to understand indexes. An array is a collection of data points.
 */

import Foundation

var myTitle1: String = "Hello World1!"
var myTitle2: String = "Hello World2!"
// We wants to reference both title1 and title2, but we need a way to combine both of these so we can reference them together. Now these 2 pieces of data are completely separate. What if we want to pass these data around as a collection? Maybe we could create a Tuple.

// Tuple example:
func doSomething(value: (title1: String, title2: String)) {
    // we want to pass in a vlue that has both of the above. Let's call it a value that is a tuple of type String.
}

// now when we call doSomething, we can pass in a tuple so that 1 piece of data that has both myTitle1 and myTitle1:
doSomething(value: (myTitle1, myTitle2))
// this works in smaller scale. If we have 100 titles, this method won't works as it is not scalable.

// alternately, we can create a struct or class:
struct TitlesModel { // custom data model.
    let title1: String
    let title2: String
} // If there is a hundred titles, we are not going to type out 100 of it as that's ridiculous. So the solution is by using a collection specifically. We are going to use array.

func doSomething(value: TitlesModel) {
    
}

doSomething(value: TitlesModel(title1: myTitle1, title2: myTitle2))

// ---------
let apple: String = "Apple"
let orange: String = "Orange"

// [] indicates an array.
// This is an array of String
let fruits1: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange] // another way of writing.
let fruits3: Array<String> = [apple, orange]

let myBools: [Bool] = [true, false, true, true, true, false] // array of Boolean.

// Let's pass in a whole bunch of strings as one single collection.
func doSomething(value: [String]) {
    
}

let fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]
let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

//--------
let fruitsArrayA: [String] = ["Apple", "Orange"]
if let firstItem = fruitsArrayA.first {
    // use 'if let' statement to unwrap the value of the fruitsArray.
}

/* error! Because fruitsArrayA is let constant, therefore we cannot append.
 fruitsArrayA = fruitsArrayA + ["Banana"]
 print(fruitsArrayA)
 */

//--------
var fruitsArrayB: [String] = ["Apple", "Orange"] // banana and mango add later to the array.
if let firstItem = fruitsArrayB.first {
    
}

fruitsArrayB = fruitsArrayB + ["Banana", "Mango"] // we can append Banana into the array as fruitsArrayB is a variable. But this is not what we should do, array got a special method for it.
print(fruitsArrayB)

// --------
var fruitsArrayC: [String] = ["Apple", "Orange"]
if let firstItem = fruitsArrayC.first {
    
}

fruitsArrayC.append("Banana") // use proper method called 'Append' to add items to the end of the array.
fruitsArrayC.append("Mango")
print(fruitsArrayC)

//------
var fruitsArrayD: [String] = ["Apple", "Orange"]
if let firstItem = fruitsArrayD.first {
    
}

fruitsArrayD.append(contentsOf: ["Banana", "Mango"]) // If you wants to append both at the same time.
print(fruitsArrayD)

// -------
// What if I want to just access the first element? Use subscript.
// count: 1,2,3,4.
// indexes: 0,1,2,3.

let firstIndex = fruitsArrayD.indices.first
let lastIndex = fruitsArrayD.indices.last
// fruitsArrayD[] // For accessing subscript of the array.
fruitsArrayD[0] // Accessing the (index:0) which is (count:1).
fruitsArrayD[2] // Accessing the (index:2) which is (count:3).

//--------
// Generally, we should only access the index directly if we are absolutely sure that there is a value at that index.
// To check whether the index does exist before you actually access it:
if fruitsArrayD.indices.contains(4) {
    let item = fruitsArrayD[4]
}

//-------
// What if we wants to add items in btw orange and banana? Use insert.
// index = [0,1,2,3]
var fruitsArrayE: [String] = ["Apple", "Orange", "Banana", "Mango"]
fruitsArrayE.insert("Watermelon", at: 2)
print(fruitsArrayE)

// -------
var fruitsArrayF: [String] = ["Apple", "Orange", "Banana", "Mango"]
fruitsArrayF.insert(contentsOf: ["Watermelon", "Tangerine"], at: 2) // inserting an array of items in btw.
print(fruitsArrayF)

fruitsArrayF.remove(at: 3) // removing items. Here we want to remove (index:3). Make sure the items does exist in the index or wlse it will crash.
print(fruitsArrayF)

// to check if items exist in the array. If yes, then remove it.
if fruitsArrayF.indices.contains(1) { // If index contains 1,
    fruitsArrayF.remove(at: 1) // then remove (index:1).
}
print(fruitsArrayF)

// to remove all items:
fruitsArrayF.removeAll()
print(fruitsArrayF)


//------***
// Let's create our own custom types and make array of those.
struct ProductModel {
    let title: String
    let price: Int
}

// Create an array. Array can take as many pieces of data as you want.
var myProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 5),
    ProductModel(title: "Product 3", price: 1),
    ProductModel(title: "Product 4", price: 50),
    ProductModel(title: "Product 5", price: 4),
    ProductModel(title: "Product 6", price: 50),
    ProductModel(title: "Product 7", price: 2)
    
]

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"] // Array
print(finalFruits)

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"] // Set
print(fruitsSet) // Sets are of unique values without repetition. When printed out, it is not in order. This is because Sets do not have an order.
