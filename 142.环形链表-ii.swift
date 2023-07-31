/*
 * @lc app=leetcode.cn id=142 lang=swift
 *
 * [142] 环形链表 II
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {
            return nil
        }
        var node: ListNode? = nil
        var i = head, j = head
        while j?.next != nil {
            i = i?.next
            j = j?.next?.next
            if i === j {
                break
            }
        }
        if i === j {
            j = head
            while i !== j {
                i = i?.next
                j = j?.next
            }
            node = i
        }
        return node
    }
}
// @lc code=end

