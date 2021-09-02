import UIKit

struct Stack {
  fileprivate var array: [String] = []
    
    //Push //O(1)
    mutating func push(_ element: String) {
      array.append(element)
    }
    
    //Pop
    mutating func pop() -> String? {
      // 2
      return array.popLast()
    }
    
    //Peek //avoids mutating the contents of the array, hence mutating not required
   func peek() -> String? {
        return array.last
    }
    
    var isEmpty: Bool {
      return array.isEmpty
    }

    var count: Int {
      return array.count
    }
}


extension Stack: CustomStringConvertible {
  
    var description: String {
    let topDivider = "---Stack---\n"
    let bottomDivider = "\n-----------\n"

    let stackElements = array.reversed().joined(separator: "\n")

    return topDivider + stackElements + bottomDivider
  }
}


var rwBookStack = Stack()
rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("tvOS Apprentice")
rwBookStack.push("iOS Apprentice")
rwBookStack.push("Swift Apprentice")
print(rwBookStack)

