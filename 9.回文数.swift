/*
 * @lc app=leetcode.cn id=9 lang=swift
 *
 * [9] 回文数
 */

// @lc code=start
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var a = x 
        var reversed = 0

        while a != 0 {
            reversed = reversed * 10 + (a % 10)
            a = a / 10
        }
        
        return reversed == x
    }
}
// @lc code=end

