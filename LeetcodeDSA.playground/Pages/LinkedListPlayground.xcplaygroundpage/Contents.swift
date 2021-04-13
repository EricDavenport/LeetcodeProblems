import Foundation

// LinkedList Implementation

// first create a Node

class Node {
  var value: Int
  var next: Node?
  init(_ value: Int){
    self.value = value
  }
  
}

func printNodeValues(_ node: Node?) {
  // node is optional
  var node = node
  
  // looking at current node ->
  while let currentNode = node {
    // if exist print value
    print(currentNode.value, separator: "")
    // point to the next node so print statement can continue
    node = currentNode.next
  }
}

var node1 = Node(1)
var node2 = Node(2)
var node3 = Node(3)
var node4 = Node(4)
node1.next = node2
node2.next = node3
node3.next = node4

//printNodeValues(node1)


func reverseList(_ node: Node?) -> Node? {
  var node = node
  var nextNode: Node?
  var previousNode: Node?
  
  while let currentNode = node {
    nextNode = currentNode.next
    currentNode.next = previousNode
    previousNode = currentNode
    node = nextNode
  }
  return previousNode
}

//printNodeValues( reverseList(node1) )


// define a linkedlist

class LinkedList {
  var head: Node?
  var tail: Node?
  
  var isEmpty: Bool {
    return head == nil
  }
}


// function to add to linked list
extension LinkedList {
  func append(_ value: Int) {
    let newNode = Node(value)
    
    guard !isEmpty else {
      head = newNode
      tail = newNode
      return
    }
    // if there are additional values we need to have the vary last node point to the new node
    guard let lastNode = tail else {
      return
    }
    lastNode.next = newNode
    tail = newNode
  }
  
  
  // write a function that prints the nodes of a linked list
  func printList() {
    // need to use self to avoid confusion between own initializer
    var head = self.head
    
    // while pointer exist
    while let currentNode = head {
      print(currentNode.value)
      head = currentNode.next
    }
  }
  
  // challenge: write a function to remove the last element in a linkedList
  func removeLast() -> Node? {
    //    var tail = self.tail
    
    //    while secondLast
    
    guard let lastNode = tail else {
      return nil
    }
    tail = nil
    return lastNode
  }
  
  // delete node that isnt the tail or head
  func deleteNode(_ node: Node?) {
    guard let currentNode = node, let next = node?.next else { return }
    
    currentNode.value = next.value
    currentNode.next = next.next
  }
  
  
}


var list = LinkedList()
list.append(1)
list.append(19)
list.append(20)
list.append(30)
list.printList()
print("break1")
printNodeValues(list.removeLast())
print("break2")
printNodeValues(list.removeLast())
print("break3")

list.printList()

//Test space for push with new oaut key
