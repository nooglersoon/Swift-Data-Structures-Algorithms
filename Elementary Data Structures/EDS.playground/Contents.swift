var list = LinkedList<Int>()
  list.push(3)
  list.push(2)
  list.push(1)
  print("Before removing last node: \(list)")
  let removedValue = list.removeLast()
  print("After removing last node: \(list)")
  print("Removed value: " + String(describing: removedValue))
