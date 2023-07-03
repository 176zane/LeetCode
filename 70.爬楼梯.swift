/*
 * @lc app=leetcode.cn id=70 lang=swift
 *
 * [70] 爬楼梯
 */

// @lc code=start
class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n < 3 {
            return n
        }
        var array = Array(repeating: 0, count: n+1)
        array[1] = 1
        array[2] = 2
        for i in 3...n {
            array[i] = array[i-2] + array[i-1]
        }
        return array[n]
    }
}
// @lc code=end

