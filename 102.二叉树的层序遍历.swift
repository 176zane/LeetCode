/*
 * @lc app=leetcode.cn id=102 lang=swift
 *
 * [102] 二叉树的层序遍历
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
 class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        var queue = [TreeNode]()
        if let node = root {
            queue.append(node)
        }
        while queue.count > 0 {
            var n = queue.count//记录当前队列中元素数量
            var valArray = [Int]()
            for _ in 0..<n {
                var node = queue.removeFirst()
                valArray.append(node.val)
                
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            result.append(valArray)
        }
        return result
    }
}

class Solution2 {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        var queue = [TreeNode]()
        if let node = root {
            queue.append(node)
        }
        while queue.count > 0 {
            var nodeArray = [TreeNode]()

            while queue.count > 0 {
                let node = queue.removeFirst()
                nodeArray.append(node)
            }
            var valArray = [Int]()
            for node in nodeArray {
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
                valArray.append(node.val)
            }
            result.append(valArray)
        }
        return result
    }
}
// @lc code=end

