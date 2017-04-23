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

print(project.title)