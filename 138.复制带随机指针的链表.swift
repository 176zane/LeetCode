/*
 * @lc app=leetcode.cn id=138 lang=swift
 *
 * [138] 复制带随机指针的链表
 */

// @lc code=start
/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var next: Node?
 *     public var random: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *    	   self.random = nil
 *     }
 * }
 */

//https://leetcode.cn/problems/copy-list-with-random-pointer/solutions/295083/liang-chong-shi-xian-tu-jie-138-fu-zhi-dai-sui-ji-/
class Solution {
    func copyRandomList(_ head: Node?) -> Node? {
        var current = head
        var dummy: Node? = nil
        while current != nil {
            var node = Node(current!.val)
            node.next = current?.next
            current?.next = node
            current = current?.next?.next
        }
        current = head
        while current != nil {
            current?.next?.random = current?.random?.next
            current = current?.next?.next
        }
        current = head
        while current != nil {
            if dummy == nil {
                dummy = current?.next
            }
            var temp = current?.next?.next
            current?.next?.next = temp?.next
            current?.next = temp
            current = temp
        }
        return dummy
    }
}
// @lc code=end

