import Foundation

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

// Addition
// likeCount = likeCount + 1 (type in full)
likeCount += 1
print(likeCount)

// Subtraction
likeCount -= 1
print(likeCount)

// Multiplication
likeCount *= 1.5
print(likeCount)

// Division
likeCount /= 2
print(likeCount)

// Combine operators
likeCount = ((likeCount*2) + 1)/2
print(likeCount)

// refer to the 3 variables on top:
likeCount += 1

if likeCount == 5 {
    print("Post has 5 likes.")
} else {
    print("Post does NOT have 5 likes.")
}

if likeCount != 5 {
    print("Post does NOT have 5 likes.")
}

if likeCount > 5 {
    print("Post has greater than 5 likes.")
}

if likeCount >= 5 {
    print("Post has greater than or equal to 5 likes.")
}

if (likeCount > 3) && (commentCount > 0) {
    print("Post has greater than 3 likes AND greater than 0 comments.")
} else {
    print("Post has 3 or less likes OR post has 0 or less comments.")
}

if likeCount > 3 || commentCount > 0 {
    print("Post has greater than 3 likes OR greater than 0 comments.")
} else {
    print("Post has 3 or less likes AND post has 0 or less comments.")
}

var userIsPremium: Bool = true
var userIsNew: Bool = false

if userIsPremium && userIsNew {
    
}

if (likeCount > 3 && commentCount > 0) || viewCount > 50 {
    print("EXECUTE")
}

if (likeCount > 100) && (commentCount > 0 || viewCount > 50) {
    print("EXECUTE")
}

if likeCount > 5 || userIsPremium {
    
}

if likeCount > 5 {
    print("Like count > 5")
} else if likeCount > 2 {
    print("Like count > 2")
} else if userIsPremium {
    print("user is premium")
} else {
    print("else statement")
}
