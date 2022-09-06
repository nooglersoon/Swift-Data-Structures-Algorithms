import Foundation

public struct Stack<T> {
    private var storage: [T] = []
    public init() {}
}

// For Debugging Purposes

extension Stack: CustomDebugStringConvertible {
    public var debugDescription: String {
        """
        ----top----
        \(storage.map { "\($0)" }.reversed().joined(separator:
        "\n"))
        -----------
        """
    }
}

// Stack Main Operations. Both Push and Pop have a O(1) Time Complexity

extension Stack {
    public mutating func push(_ element: T) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> T? {
      return storage.popLast()
    }
    
}


// Non-Essential Stack Operations

extension Stack {
    
    public func peek() -> T? {
     return storage.last
    }
    
    public var isEmpty: Bool {
      return peek() == nil
    }
    
}


// Generate Stack from the Array

extension Stack: ExpressibleByArrayLiteral {
   
   // Convert from the existing array
   public init(_ elements: [T]) {
      storage = elements
   }
    
   // Init directly from the new array
   public init(arrayLiteral elements: T...) {
      storage = elements
   }
    
}
