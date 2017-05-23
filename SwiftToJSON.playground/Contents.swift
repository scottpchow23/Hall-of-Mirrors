//: Playground - noun: a place where people can play

class JSONConverter {
    static let sharedInstance = JSONConverter()
    func convertToJSON(object: Any) -> [String: Any]{
        var dictionary : [String: Any] = [:]
        let objectMirror = Mirror(reflecting: object)
        let properties = objectMirror.children
        
        for property in properties {
            if let label = property.label {
                let value = property.value
                
                dictionary[label] = value
            }
        }
        
        return dictionary
    }
}


class ThingA {
    var string : String?
    var int : Int?
    var array : Array<Any>?
    var bool : Bool?
    var dictionary : [String : Any]?
}

var thingA = ThingA()
var jsonDictionary = JSONConverter.sharedInstance.convertToJSON(object: thingA)
print(jsonDictionary)

thingA.string = "fun"
thingA.int = 19
thingA.array = ["hi", "hello", "good day"]
thingA.bool = true
thingA.dictionary = ["Thomas" : 1, "Scott" : 2]

jsonDictionary = JSONConverter.sharedInstance.convertToJSON(object: thingA)
print(jsonDictionary)