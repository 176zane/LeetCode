/*
 * @lc app=leetcode.cn id=98 lang=swift
 *
 * [98] 验证二叉搜索树
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
    var pre : Int?
    func isValidBST(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        if !isValidBST(root?.left) {
            return false
        }
        if pre != nil {
            if pre! >= root!.val {
                return false
            }
            pre = root!.val
            
        }else {
            pre = root!.val
        }
        if !isValidBST(root?.right) {
            return false
        }
        return true
    }
    
}
//出错 子树符合 而上层可能不符合
class Solution2 {
    func isValidBST(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        //左子树中的所有值都得小于根节点的
        if root?.left != nil && root!.left!.val >= root!.val {
            return false
        }
        if root?.right != nil && root!.right!.val <= root!.val {
            return false
        }
        return isValidBST(root?.left)&&isValidBST(root?.right)
    }
}

// @lc code=end

