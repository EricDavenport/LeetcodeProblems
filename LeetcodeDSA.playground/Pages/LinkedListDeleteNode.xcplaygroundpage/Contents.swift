import Foundation



public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}

func deleteNode(_ node: ListNode?) {
  guard let currentNode = node, let next = node?.next else { return }
  
  currentNode.val = next.val
  currentNode.next = next.next
}


