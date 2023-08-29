/*
 * @lc app=leetcode.cn id=198 lang=swift
 *
 * [198] 打家劫舍
 */

// @lc code=start
class Solution {
    func rob(_ nums: [Int]) -> Int {
        var dp = Array(repeating: 0, count: nums.count)
        dp[0] = nums[0]
        if nums.count > 1 {
            dp[1] = max(dp[0], nums[1])
        }
        if nums.count > 2 {
            for i in 2..<nums.count {
                dp[i] = max(dp[i-1], dp[i-2]+nums[i])
            }
        }
        return dp[nums.count-1]
    }
}

class Solution2 {
    func rob(_ nums: [Int]) -> Int {
        var dp = Array(repeating: [0,0], count: nums.count)
        dp[0][1] = nums[0]
        if nums.count > 1 {
            dp[1][0] = nums[0]
            dp[1][1] = nums[1]
        }
        if nums.count > 2 {
            for i in 2..<nums.count {
                dp[i][0] = max(dp[i-1][1],dp[i-1][0])
                dp[i][1] = dp[i-1][0] + nums[i]
            }
        }
        
        
        return max(dp[nums.count-1][0], dp[nums.count-1][1])
    }
}
// @lc code=end

