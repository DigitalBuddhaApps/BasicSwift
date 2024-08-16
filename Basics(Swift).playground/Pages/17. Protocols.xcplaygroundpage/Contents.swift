/*
 Next one will be SwiftUI Bootcamp. In SwiftUI, anytime you create any screen, the screen conforms to the view protocol.
 
 Protocols considered an advanced topic.
 - This video talks about high level introduction to what a protocol is, as every single view in SwiftUI is going to conform to this protocol.
 - What is conforming to a Protocol?
 - A protocol is just a list of rules or requirements that an object has to follow.
 - When you created an object for protocol, it could be struct, class or anything else...
 */

import Foundation

struct EmployeeModel: EmployeeHasName { // this means EmployeeModel must conforms to EmployeeHasName. If we conform, means we then need to add everything in our code to support those rules.
    let title: String
    let name: String
}

protocol EmployeeHasName {
    // anything that conforms to this protocol "EmployeeHasName", must have whatever we put in here.
    // The rules here are it has to have a name of type String.
    var name: String { get } // You need to have a name to conform to this Protocol.
}
