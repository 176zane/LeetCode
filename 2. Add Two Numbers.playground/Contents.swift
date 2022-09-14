
/**
 * Definition for singly-linked list.
 *  */
 public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let newlist = ListNode()
        var a = l1
        var b = l2
        var big = 0
        var currentNode = newlist
        
        while a != nil || b != nil || big > 0 {
            let sum = (a?.val ?? 0) + (b?.val ?? 0) + big
            big = sum / 10
            currentNode.next = ListNode(sum % 10)
            currentNode = currentNode.next!
            a = a?.next
            b = b?.next
        }
        return newlist.next
    }
}


class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else {return l2}
        guard let l2 = l2 else {return l1}
        
        let outputNode = ListNode((l1.val + l2.val)%10)
        if l1.val + l2.val > 9 {
            outputNode.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next),ListNode(1))
        } else {
            outputNode.next = addTwoNumbers(l1.next, l2.next)
        }
        
        return outputNode
    }
}







