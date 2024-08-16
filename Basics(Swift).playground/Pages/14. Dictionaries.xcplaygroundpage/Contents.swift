/*
 Dictionaries:
- are another collection, another way to group a whole bunch of pieces of data together. They work a little differently than arrays and they basically different use cases.
- are based on keys, not indexes. It works like real 'Dictionary', the key is what we are looking for.
- are incredibly fast. They're one of the fastest ways to access data in software engineering.
- less common than arrays becasue arrays have indices where their data is always in specific order. If we don't care about order, than dictionary is great alternative.
- not ordered but safer to use. In array, if you try to access items outside of arrays, it will crash. But you don't have such problems in dictionaries.
- closer to Set, but it is not ordered.
- its 'values' can be duplicated, but not its 'keys'.
- uses colon in the middle [key:value].
- Arrays have indexes, but dictionaries have keys.
 */

import Foundation

// Array is an ordered list which allows duplicate.
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)
// To access item in an array:
let myFruit = finalFruits[1]

// Set is an unordered list which duplicate is not allowed.
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

//--------
// We are going to have objects where the key is a string and the value is a Boolean.
var myFirstDictionary: [String: Bool] = [
    "Apple": true,
    "Orange": false
]

let item = myFirstDictionary["Orange"] // in Dictionary, if you access the key "Orange". it is actually safe to access even if the dictionary doesn't have it.

let itemA = myFirstDictionary["Banana"] // nil, because there is no value for the key "Banana".

//------
var secondDictionary: [Int:String] = [
    0: "Apple",
    176: "Banana"
]

let item2 = secondDictionary[176]
let item2a = secondDictionary[86] // it's nil, but it is not going to crash your app.

// --------
var thirdDictionary: [String:String] = [
    "abc": "Apple",
    // "abc": "Mango", //error, because dictionary cannot have duplicate keys.
    "def": "Banana",
    "xyz": "Apple" // duplicate value is fine, but not duplicate key.
] // no order in dictionary, only keys and values.

let item3 = thirdDictionary["abc"]
// to append, we must tell the dictionary which key to add it to.
thirdDictionary["123"] = "Mango"
print(thirdDictionary)
// to remove key:
thirdDictionary.removeValue(forKey: "def")
print(thirdDictionary)

// -------
struct PostModel {
    let id: String // each post has a unique ID.
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def678", title: "Post 2", likeCount: 7),
    PostModel(id: "xyz987", title: "Post 3", likeCount: 217)
]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

var postDict: [String:PostModel] = [
    "abc123": PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def678": PostModel(id: "def678", title: "Post 2", likeCount: 7),
    "xyz987": PostModel(id: "xyz987", title: "Post 3", likeCount: 217)
]

let myNewItem = postDict["def678"]
