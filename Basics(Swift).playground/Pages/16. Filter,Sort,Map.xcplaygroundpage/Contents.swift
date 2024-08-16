/*
 Loops help us to loop things manually. But we got better method to do that. That are filtering, sorting and mapping.
 
 Filtering: is if you take my original array and I want to filter it for every items in the array with some specific subset of data.
 
 Sorting: if you want to take all the items in an array and then put them in a certain order.
 
 Mapping: or transforming a data type from one type to another. (Ex: If I have an array of some struct here and I want to convert it to an array of string, I can map it from one type to another.)
 
 */

import Foundation

// (i) Filtering:

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: "Emily", isPremium: false, order: 1),
    DatabaseUser(name: "Samantha", isPremium: true, order: 3),
    DatabaseUser(name: "Joe", isPremium: true, order: 10000),
    DatabaseUser(name: "Chris", isPremium: false, order: 2),
]

var allPremiumUsers: [DatabaseUser] = []
// array of [DatabaseUser].

for user in allUsers {
    if user.isPremium {
        allPremiumUsers.append(user)
    }
}
print(allPremiumUsers)

//------

// Instead of having to loop the user in allUsers, we can just filter the array automatically:
var allPremiumUsersA: [DatabaseUser] = allUsers.filter { user in
    if user.isPremium {
        return true
    }
    return false
}
print(allPremiumUsersA)

//-------
// simplify it by just returning the value itself.
var allPremiumUsersB: [DatabaseUser] = allUsers.filter { user in
    // return user.isPremium
    user.isPremium // 'return' can be omitted.
}
print(allPremiumUsersB)

//-------
// when we are looping thru all the users, we need a way to reference the user
var allPremiumUsersC: [DatabaseUser] = allUsers.filter({
    // $0 represents index 0.
    $0.isPremium // $ is a shorthand method of loop.
})
print(allPremiumUsersC)

//--------
// (ii) Sorting

// this statement have 2 pieces of data, which is user1 and user2.
var orderedUsers1: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order > user2.order // '>' is reverse order.
}

var orderedUsers2: [DatabaseUser] = allUsers.sorted (by: {
    $0.order < $1.order
})

print(orderedUsers1)
print(orderedUsers2)

// ------
// (iii) Mapping

// We don't want the entire database. We only wants to get certain data.
// Eg: We only wants the 'name' from the array of database. Here we are transforming an array of databaseUsers to an array of Strings, or simply saying, mapping the data from a database user to a string
var userNames: [String] = allUsers.map { user in
    return user.name // return the type that we wants it to become.
}

var userNames2: [String] = allUsers.map({$0.name})

print(userNames)
