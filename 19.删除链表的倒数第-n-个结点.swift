/*
 * @lc app=leetcode.cn id=19 lang=swift
 *
 * [19] 删除链表的倒数第 N 个结点
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

 //https://leetcode.cn/problems/remove-nth-node-from-end-of-list/solutions/450350/shan-chu-lian-biao-de-dao-shu-di-nge-jie-dian-b-61/

 //多测试几遍用例
 //画一个图出来看
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var dummy : ListNode? = ListNode(0, head)
        var first = head
        var second = dummy
        for _ in 1...n {
            first = first?.next
        }
        //second是要删除结点的前一个结点
        while first != nil {//上一步有可能就直接first为空了
            first = first?.next
            second = second?.next
        }
        second?.next = second?.next?.next
        return dummy?.next
    }
}
// @lc code=end

