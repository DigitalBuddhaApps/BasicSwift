import Foundation

/*
 Enums and Structs are 'value' type, whereas Classes are 'reference' type.
 
 When we actually created a Class, we call it an 'instance', and that 'instance' of the class is pointing to the object in memory. Because of that, the way we update a class is slightly different. We don't actually mutate it like we did with Struct, but we actually just update the object in memory.
 
 - This video tells you how we can actually create a class and how we can update it. And also, when we should use 'struct' vs 'class?
 */

/*
 Structs are probably the most confusing but also the most powerful and we should get really comfortable in using Struct.
 Class is in the 'Heap'. When we edit, we reference the pointer object in the memory and then we change the object in memory. We do not take the object copy and mutate it and create a new object.
 Structs are better for passing around your app, but classes are better for when you have an instance in your app and you wants to do things inside of it.
 Classes are bit slower as they require more memory allocation.
 
Conclusion:
 - Classes are slower as they are stored in the Heap (memory). 
 - Heaps are shared across all the threads in our program.
 - Objects in the Heap are Reference type.
 - Reference types point to an object in memory and update the object in memory.
 */

// When you start bulding an app, you use something called an app architecture and basically a structure on how you're going to organize all of the code in your app. ViewModel comes from one of those structures which is called Model View View Model (MVVM)

class ScreenViewModel { // All of the data needed for some screen.
    
    let title: String
    var showButton: Bool
    
    init(title: String, showButton: Bool) { // No implicit init(initializer) in Classes.
        self.title = title
        self.showButton = showButton
    }
}

// -------

class ScreenViewModelA {
    
    // Give default values for both of them so we don't need initializer because there is nothing to initialize as these already have initial values.
    var title: String = ""
    var showButton: Bool = false
    
    // But we still put init eventhough it's not compulsory in this case.
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    // Classes have deinit whereas Structs doens't have, because Structs are 'value' type.
    deinit { // deinit is the opposite of init.
        // runs as the object is being removed from memory.
        
    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}

// Note: We are using let instead of var as the object itself is not changing, but the data inside the object is changing.
let viewModel: ScreenViewModelA = ScreenViewModelA(title: "Screen 1", showButton: true)
// viewModel here is stored in the memory and act as a pointer object in memory.
viewModel.showButton = false
// In class, we create an instance and we can change values inside the instance.
viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
