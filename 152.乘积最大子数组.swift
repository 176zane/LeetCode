/*
 * @lc app=leetcode.cn id=152 lang=swift
 *
 * [152] 乘积最大子数组
 */

// @lc code=start
class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var result = Int.min,currentMax = 1, currentMin = 1
        for i in nums {
            if i < 0 {
                let temp = currentMax
                currentMax = currentMin
                currentMin = temp
            }
            currentMax = max(currentMax * i, i)
            currentMin = min(currentMin * i, i)
            result = max(result, currentMax)
        }
        return result
    }
}
// @lc code=end

