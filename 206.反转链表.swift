/*
 * @lc app=leetcode.cn id=206 lang=swift
 *
 * [206] 反转链表
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
 //递归算法看下面链接的ppt演示
 //https://leetcode.cn/problems/reverse-linked-list/solutions/36710/dong-hua-yan-shi-206-fan-zhuan-lian-biao-by-user74/
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var newNode = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return newNode
    }
}
//迭代
class Solution2 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var pre :ListNode? = nil
        var current = head
        while current != nil  {
            var temp = current?.next
            current?.next = pre
            pre = current
            current = temp
        }
        return pre
    }
}
// @lc code=end

