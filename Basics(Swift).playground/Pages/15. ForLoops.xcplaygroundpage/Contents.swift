import Foundation

for item_0 in 0..<100 { // this means looping thru 0 to 99
    print(item_0)
}

for x in 1..<51 { // more common to start at 0
    print(x)
}

// -----
/*
let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray { // loop thru items in myArray.
    print(item)
    
    if item == "Gamma" {
        secondArray.append(item)
    }
}
print(secondArray)
 */

// --------
struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLessons = [
    LessonModel(title: "Lesson 1", isFavorite: true), // index:0
    LessonModel(title: "Lesson 2", isFavorite: false), // index:1
    LessonModel(title: "Lesson 3", isFavorite: false), // index:2
    LessonModel(title: "Lesson 4", isFavorite: true), // index:3
]

var favoriteLessons: [LessonModel] = []

for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}
print(favoriteLessons)

// --------
for (index, lesson) in allLessons.enumerated() {
    // now we have access to both the index and lesson in this closure.
    print("index: \(index) || lesson: \(lesson)")
}

//-------break
for (index, lesson) in allLessons.enumerated() {
    if index == 1 { // at (index:1), we break out of the loop. Therefore, only index:0 is printed.
        break
    }
    print("only index: \(index) || lesson: \(lesson)")
}

//--------continue
// continue means skip this item but continue to the next item in the loop.
for (index, lesson) in allLessons.enumerated() {
    if index == 1 { // break at (index:1) and continue the rest. This means (index:1) will be skipped.
        continue
    }
    print("continue index: \(index) || lesson: \(lesson)")
}
