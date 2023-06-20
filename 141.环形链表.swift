/*
 * @lc app=leetcode.cn id=141 lang=swift
 *
 * [141] 环形链表
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
    func hasCycle(_ head: ListNode?) -> Bool {
        var i = head, j = head?.next
        while j != nil {
            //'===' 是比较两个对象的地址是否相等，==不行是因为listNode不满足equalable协议
            if i === j {
                return true
            }
            i = i?.next
            j = j?.next?.next
        }
        
        return false
    }
}
// @lc code=end

