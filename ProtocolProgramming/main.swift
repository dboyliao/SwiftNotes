import Foundation

public protocol Bird: BooleanType {
    var name: String { get } // no need to add `public` here. public keyword can not  
    var canFly: Bool { get } // be used in protocol declairation.

    // any type conform to Bird protocol must expose these two property.
    // That is, they must be public since Bird is a public protocol.
}

extension BooleanType where Self:Bird {
    public var boolValue: Bool {
        return self.canFly
    }
}

public protocol Flyable {
    var airspeedVelocity: Double { get }
}

extension Bird {
    public var country:String { 
        return "Taiwan"
    }
    private var isDistinct:Bool {
        return false
    }
}

extension Bird where Self: Flyable {

    public var canFly:Bool {
        return true
    }
}

public struct FlappyBird: Bird, Flyable {
    public let name:String
    public let canFly = true

    public var airspeedVelocity:Double = 1

    public init(){
        self.name = ""
    }

    public init(name:String){
        self.name = name
    }
}

let flappyBird = FlappyBird(name:"hello")
print(flappyBird)
print(flappyBird.country)

public enum UnladenSwallow: Bird, Flyable {
    case African
    case European
    case Unknown

    public var name:String {

        switch self {
        case .African:
            return "African"
        case .European:
            return "European"
        case .Unknown:
            return "Unknown"
        }
    }

    public var airspeedVelocity:Double {

        switch self {
        case .African:
            return 10.0
        case .European:
            return 1.0
        case .Unknown:
            fatalError("Error!!")
        }
    }
    public var country:String {
        return "HaHa"
    }
}

let myStruct = UnladenSwallow.African

print(myStruct.canFly)

if myStruct {
    print("I can fly!!")
} else {
    print("shit....")
}
