import Foundation

public struct StackChallenges {
    
    func reverseArray<T>(_ array: [T]) {
        var stack: Stack<T> = Stack(array)
        while let element = stack.pop() {
            print(element)
        }
    }
    
    func balanceTheParentheses(_ text: String) -> Bool {
        var counter: Int = 0
        var stack: Stack<Character> = Stack(Array(text))
        while let element = stack.pop(){
            if element == "(" {
                counter += 1
            } else if element == ")" {
                counter -= 1
            }
        }
        return counter == 0
    }
    
}



