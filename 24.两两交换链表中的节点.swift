/*
 * @lc app=leetcode.cn id=24 lang=swift
 *
 * [24] 两两交换链表中的节点
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
 //尝试递归解法
class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        
    }
}

class Solution2 {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        var dummy :ListNode? = ListNode(0,head)
        var current = dummy
        while current?.next?.next != nil {
            var temp = current?.next?.next
            current?.next?.next = temp?.next
            temp?.next = current?.next
            current?.next = temp
            current = current?.next?.next
        }
        
        return dummy!.next
    }
}

// @lc code=end

