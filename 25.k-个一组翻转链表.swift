/*
 * @lc app=leetcode.cn id=25 lang=swift
 *
 * [25] K 个一组翻转链表
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
 //https://leetcode.cn/problems/reverse-nodes-in-k-group/solutions/10416/tu-jie-kge-yi-zu-fan-zhuan-lian-biao-by-user7208t/
class Solution {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var dummy :ListNode? = ListNode(0,head)
        var prev = dummy,current = dummy,start = head
        var step = 0
        while current != nil {
            if step == k {
                var temp = current?.next
                current?.next = nil
                prev?.next = reverseList(start)//向前链接
                start?.next = temp//向后链接
                //重置状态
                prev = start
                start = temp
                current = prev
                step = 0
            }
            current = current?.next
            step += 1
        }
        return dummy?.next
    }
    
    func reverseList(_ head: ListNode?) ->ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var reversed = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return reversed
    }
}
// @lc code=end

