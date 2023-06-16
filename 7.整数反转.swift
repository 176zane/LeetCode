/*
 * @lc app=leetcode.cn id=7 lang=swift
 *
 * [7] 整数反转
 */

// @lc code=start
class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        var result = 0

        while x != 0 {
            result = result * 10 +  (x % 10)
            x = x / 10
        }


        if result < Int32.min || result > Int32.max {
            return 0
        }
        return result
    }
}
// @lc code=end

