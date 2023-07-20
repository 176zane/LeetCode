/*
 * @lc app=leetcode.cn id=123 lang=swift
 *
 * [123] 买卖股票的最佳时机 III
 */

// @lc code=start
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count < 2 {
            return 0
        }
        var dp = Array(repeating: Array(repeating: 0, count: 5), count: prices.count)
        //0没有操作 （其实我们也可以不设置这个状态）
        //1第一次持有股票
        //2第一次不持有股票
        //3第二次持有股票
        //4第二次不持有股票
        dp[0][0] = 0
        dp[0][1] = -prices[0]
        dp[0][2] = 0
        dp[0][3] = -prices[0]
        dp[0][4] = 0
        
        for i in 1..<prices.count {
            dp[i][0] = dp[i-1][0]
            dp[i][1] = max(dp[i-1][0]-prices[i], dp[i-1][1])
            dp[i][2] = max(dp[i-1][2], dp[i-1][1]+prices[i])
            dp[i][3] = max(dp[i-1][2]-prices[i], dp[i-1][3])
            dp[i][4] = max(dp[i-1][3]+prices[i], dp[i-1][4])
        }
        return max(dp[prices.count-1][0], dp[prices.count-1][2], dp[prices.count-1][4])
    }
}

// @lc code=end

