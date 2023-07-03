/*
 * @lc app=leetcode.cn id=23 lang=swift
 *
 * [23] 合并 K 个升序链表
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
class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
       
        
    }
    
   
}


class Solution2 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var result:ListNode? = nil
        for node in lists {
            result = mergeTwoList(result, node)
        }
        return result
        
    }
    
    func mergeTwoList(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        if l1!.val <= l2!.val {
            l1?.next = mergeTwoList(l1?.next, l2)
            return l1
        }else {
            l2?.next = mergeTwoList(l1, l2?.next)
            return l2
        }
    }
}
// @lc code=end

