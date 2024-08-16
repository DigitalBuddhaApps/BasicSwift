import Foundation

/*
 Object Oriented Programming:
 -  During the life of the app, we create and destroy objects.
 -  Create = Initialize (init) = Allocate (add to memory)
 -  Destroy = Deinitialize (deinit) = Deallocate (removing from memory)
 
 Automatic Reference Counting (ARC):
 -  A live count of the number of objects in memory.
 -  Create 1 object, count goes up by 1.
 -  Create 2 objects, count goes up by 2.
 -  Destroy 1 object, count goes down by 1.
 
 -  The more objects (or the higher the counts), the slower the app performs. Therefore we want to keep the ARC count as low as possible. We want to create objects only when we need them, and destroy them as soon as we no longer need them.
 - Eg: If an app have 2 screens and user is moving from screen 1 to screen 2. We only want to allocate screen 2 WHEN we need it (i.e. when the user clicks a button to segue to screen 2.) When we get to screen 2, we may want to deallocate screen 1.
 
 There are 2 types of memory: Stack and Heap.
 Only objects in the Heap are counted towards ARC.
 -  Objects in the Stack: String, Bool, Int, Struct, Enum, Array, and most of the basic types (eg:date).
 (*Note: Every single view and screen in SwiftUI, is a Struct.)
 -  Objects in the Heap: Functions, Class, Actors.
 
 iPhone is running on a thread. It is a "multi-threaded environment", which means there are multiple threads running simultaneously. "Threads" are like
 "engines". Each threads has a Stack, but there is only 1 Heap for all threads.
 
 -  Stack is faster, lower memory footprint, preferable.
 -  Heap is slower and have higher memory footprint, risk of threading issues.
 
 Value vs Reference types:
 -  Objects in the "Stack" are "Values" types.
    When you edit a Value type, you create a copy of it with new data.
 -  Objects in the "Heap" are "Reference" types.
    When you edit a Reference type, you edit the object that you are referencing. This "reference" is actually called "pointer" because it "points" to an object in the Heap (in memory).
 */

struct MyFirstObject { // this ia a new data type.
    let title: String = "Hello, world!"
}

class MySecondObject {
    let title: String = "Hello, world!"
}

// Class vs Struct explained to a 5-year old.

/*
 Imagine a school and in the school there are classrooms. Within each class, there are quizzes. During the day, the teacher will hand out many different quizzes to different classes. The students will answer the quizzes and return back them back to the teacher.
 
 "school" = App
 "classroom" = Class
 "quiz" = Struct
 
 Eg.1: We have a classroom and there are many actions that occur inside the classroom. In code, we create a class and can perform actions within the class.
 
 Eg.2: There are many different types of quizzes. The teacher hands out the quizzes and the students take the quizzes and return to the teacher. In code, we create many structs and pass them around our app with ease.
 
 (* Note: This metaphor is NOT perfect :). Technically a "quiz" can be a class, etc.)
 
 We want to use a class for things like: "Manager", "DataService", "Service", "Factory", "ViewModel". Objects that we create and want to perform actions inside.
 
 We want to use a struct for things like: "Data Models". Objects that we create and pass around our app.
 
 */


