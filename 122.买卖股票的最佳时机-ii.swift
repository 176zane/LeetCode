/*
 * @lc app=leetcode.cn id=122 lang=swift
 *
 * [122] 买卖股票的最佳时机 II
 */

// @lc code=start
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count < 2 {
            return 0
        }
        var dp = Array(repeating: [0,0], count: prices.count)
        //i表示第几天，j=0表示当天结束不持有股票，j=1表示当天结束持有股票
        dp[0][0] = 0
        dp[0][1] = -prices[0]
        for i in 1..<prices.count {
            dp[i][0] = max(dp[i-1][0], dp[i-1][1]+prices[i])
            dp[i][1] = max(dp[i-1][0]-prices[i], dp[i-1][1])
        }
        return dp[prices.count-1][0]
    }
}
// @lc code=end

