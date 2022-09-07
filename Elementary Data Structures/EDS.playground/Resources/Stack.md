# Data Structures and Algorithms Learning Resources
### Crafted by Fauzi Achmad
### Source: Ray Wenderlich

---

## Stack

Copy the following code to Playground and see how is the stack works!

```
var stack = Stack<Int>()

stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
print(stack)

if let poppedElement = stack.pop() {
    print("Popped \(poppedElement)")
}


let array = ["A", "B", "C", "D"]
var newStack = Stack(array)
print(newStack)
newStack.pop()


var newStack2: Stack = [1.0, 2.0, 3.0, 4.0]
print(newStack2)
newStack2.pop()

```

### Stack Challenges Test Case

1. reverseArray(["aji","fauzi","achmad"])
2. print(balanceTheParentheses("h((e))llo(world)()"))
3. print(balanceTheParentheses("(hello world"))
