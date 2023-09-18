/*
 * @lc app=leetcode.cn id=53 lang=swift
 *
 * [53] 最大子数组和
 */

// @lc code=start
//定义dp[i]为以i为结尾的连续数组的最大和，就可以推导出状态转移方程
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0]
        var dp = Array(repeating: 0, count: nums.count)
        dp[0] = nums[0]
        //dp[i]表示以i为结尾（包含i）的字串的最大和，而不是通常认为的i之前的最大和（不一定包含i）
        //因此最后返回的最大和也不是dp[n-1],而是去dp数组中找最大值
        for i in 1..<nums.count {
            if dp[i-1] >= 0 {
                dp[i] = dp[i-1] + nums[i]
            }else {
                dp[i] = nums[i]
            }
            result = max(result, dp[i])
        }
        return result
    }
}

class Solution2 {
    func maxSubArray(_ nums: [Int]) -> Int {
        var result = nums[0], currentMax = nums[0]
        for i in 1..<nums.count {
            currentMax = max(currentMax + nums[i], nums[i])
            result = max(result, currentMax)
        }
        return result
    }
}

// @lc code=end

