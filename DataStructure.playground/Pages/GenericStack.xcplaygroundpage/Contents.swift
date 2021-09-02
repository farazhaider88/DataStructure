import UIKit

struct Stack <Element>{
  fileprivate var array: [Element] = []
    
    //Push //O(1)
    mutating func push(_ element: Element) {
      array.append(element)
    }
    
    //Pop
    mutating func pop() -> Element? {
      // 2
      return array.popLast()
    }
    
    //Peek //avoids mutating the contents of the array, hence mutating not required
   func peek() -> Element? {
        return array.last
    }
}


extension Stack: CustomStringConvertible {
  
    var description: String {
    let topDivider = "---Stack---\n"
    let bottomDivider = "\n-----------\n"

        let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")

    return topDivider + stackElements + bottomDivider
  }
}


var rwBookStack = Stack<String>()
rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("tvOS Apprentice")
rwBookStack.push("iOS Apprentice")
rwBookStack.push("Swift Apprentice")
print(rwBookStack)


