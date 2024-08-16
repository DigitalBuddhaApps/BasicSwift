/*
 Generally at a high level code, we want to make everything as private as posssible.
 The larger the project, the more important is the Access Control. The more specific we can be the better.
 
 Rule of Thumb: We want everything to be as private as possible! This makes you code easier to read/debug and is good coding practice.
 */

import Foundation

struct MovieModel {
    
    // the data is a movie and that is a Struct.
    let title: String
    let genre: MovieGenre
    var isFavorite: Bool
    
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        // all data is the same except isFavorite changed to newValue.
        MovieModel(
            title: title,
            genre: genre,
            isFavorite: newValue
        )
    }
    
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    
    // public allows you to access anywhere.
    public var movie1 = MovieModel(
        title: "Avatar",
        genre: .action,
        isFavorite: false
    )
    
    // private means we cannot get or set outside of the class. Therefore movie2 is inaccessible outside of MovieManager class.
    private var movie2 = MovieModel(
        title: "Step Brothers",
        genre: .comedy,
        isFavorite: false
    )
    
    // private(set) means read is public but set is private. Which means you can read it outside but cannot update.
    private(set) var movie3 = MovieModel(
        title: "Avenger",
        genre: .action,
        isFavorite: false
    )
    
}

let manager = MovieManager()
let someValue = manager.movie1
// manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
manager.movie1.updateFavoriteStatus2(newValue: true)
print(manager.movie1)

let someValue3 = manager.movie3 // can only read but cannot update outside.

//-------

class MovieManagerA {
    
    var movie1 = MovieModel(  // public can be omitted.
        title: "Avatar",
        genre: .action,
        isFavorite: false
    )
    
    private var movie2 = MovieModel(
        title: "Step Brothers",
        genre: .comedy,
        isFavorite: false
    )
    
    private(set) var movie3 = MovieModel(
        title: "Avenger",
        genre: .action,
        isFavorite: false
    )
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }
}

let managerA = MovieManagerA()
managerA.updateMovie3(isFavorite: true)
print(managerA.movie3)

//----------

// Version 1:
// we can get and set the value from outside the object since it is public.
let movie1 = managerA.movie1
managerA.movie1 = managerA.movie1.updateFavoriteStatus(newValue: true)

// Version 2:
// we can't get and set the value from outside the object since it is private.
/*
 // error, because we cannot access the data.
 let movie2 = managerA.movie2
 managerA.movie2 = managerA.movie2.updateFavoriteStatus(newValue: true)
 */

// Version 3:
// we can get the value from outside the object, but we can't set the value from outside the object.
let movie3 = managerA.movie3
// error, because we can't set the value outside the class.
// managerA.movie3 = managerA.movie3.updateFavoriteStatus(newValue: true)
managerA.updateMovie3(isFavorite: true) // mutate function? ?....

// *Note: Private and Public are by far the most common but there are many others. Other access controls include open, public, internal, fileprivate or private.
