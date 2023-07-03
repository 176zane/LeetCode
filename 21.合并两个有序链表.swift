/*
 * @lc app=leetcode.cn id=21 lang=swift
 *
 * [21] 合并两个有序链表
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

 //注意 练习递归算法
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil {
            return list2
        }
        if list2 == nil {
            return list1
        }
        if list1!.val <= list2!.val {
            list1?.next = mergeTwoLists(list1?.next, list2)
            return list1
        }else {
            list2?.next = mergeTwoLists(list1, list2?.next)
            return list2
        }
    }
}


class Solution2 {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy = ListNode()
        var current = dummy
        var l1 = list1,l2 = list2
        while l1 != nil {
            if l1!.val <= (l2?.val ?? Int.max) {
                current.next = ListNode(l1!.val)
                l1 = l1?.next
            }else {
                current.next = ListNode(l2!.val)
                l2 = l2?.next
            }
            current = current.next!
        }
        
        current.next = l2
        return dummy.next
    }
}
// @lc code=end

