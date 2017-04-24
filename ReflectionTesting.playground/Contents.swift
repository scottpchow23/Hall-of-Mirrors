//: Reflection - noun: an image seen in a mirror or shiny surface

import UIKit

class Project {
    var title: String = ""
    var id: Int = 0
    var platform: String = ""
    var version: Double = 0.0
    var info: String?
}

let project = Project()
project.title = "Reflection"
project.id = 4302667
project.platform = "Xcode 8.3"
project.version = 0.1
project.info = "This is an example of reflection being used in Swift."

print(project)

let projectMirror = Mirror(reflecting: project)
var properties = projectMirror.children

//This makes it all look like KVO
for property in properties {
    print(property)
}
print("\n")

projectMirror.children.contains { (value:(label: String?, value: Any)) -> Bool in
    if(value.label == "title") {
        return false
    } else {
        return true
    }
}
properties = projectMirror.children

for property in properties {
    print(property)
}

// Conclusion: I require an instance of the class in order to evaluate what the object's class is.