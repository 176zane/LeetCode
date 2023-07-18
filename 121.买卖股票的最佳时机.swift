/*
 * @lc app=leetcode.cn id=121 lang=swift
 *
 * [121] 买卖股票的最佳时机
 */

// @lc code=start
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        var minPrice = prices[0]
        for price in prices {
            profit = max(profit, price-minPrice)
            minPrice = min(minPrice, price)
        }
        return profit
    }
}
// @lc code=end

