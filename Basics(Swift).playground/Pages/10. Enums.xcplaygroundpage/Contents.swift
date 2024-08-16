/*
Enums are very similar to Structs, except one difference, that is at runtime we know all the cases or versions of an enum. Whereas in Struct, we don't need to know all the cases at runtime.
 
 Eg: Restaurant App:
    - this app has a bunch of cuisines.
    - there is 2 verisons in this app:
        (i) Download all that data from internet, and using that data we are going to figure out what are all the cuisines in our app. In this case, when we write our code, we don't know all the cuisines in our app. In this case, we propably use Struct for all the cuisines.
        (ii)We might know every single cuisine that's going to be in the app while writing the code. If we already know every single cuisine and version, then we use Enum.
 
 *Conlusion, Enum is the same as Struct except we have know all the cases at the runtime. Enum cannot be mutated.
 */

import Foundation

struct CarModel {
    let brand: String
    let model: String
}

struct CarBrand {
    let title: String // struct allows us to custom data.
}

/*
var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
var car2: CarModel = CarModel(brand: "Ford", model: "Focus")
var car3: CarModel = CarModel(brand: "Toyota", model: "Camry")
 */

// the case here, use Enum to restrict brand to specific values only.
struct CarModelA {
    let brand: CardBrandOption
    let model: String
}

// Enums are stored in memory the same way as a Struct but we cannot mutate them
enum CardBrandOption {
    case ford, toyota, honda
    
    // self meaning the option itself.
    var title: String {
        switch self {
        case .ford: // the option is ford.
            return "Ford" // if self is ford, the title should be "Ford".
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
            /*
        default: // use default only when you cannot cover all the case.
            return "Default"
             */
        }
        
        /*
        if self == .ford { // the option is ford.
            return "Ford" // if self is ford, the title should be "Ford".
        } else if self == .toyota { // the option is toyota.
            return "Toyota" // if self is toyota, the title should be "Toyota".
        } else {
           
         */
    }
}

var car1A = CarModelA(brand: .ford, model: "Fiesta")
var car2A = CarModelA(brand: .ford, model: "Focus")
var car3A = CarModelA(brand: .toyota, model: "Camry")

var fordBrand: CardBrandOption = .ford
print(fordBrand.title)
