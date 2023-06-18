/*
 * @lc app=leetcode.cn id=11 lang=swift
 *
 * [11] 盛最多水的容器
 */

// @lc code=start
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        if height.count < 2 {
            fatalError("invalid input")
        }
        var maxArea = 0
        var i = 0 , j = height.count - 1
        while i < j {
            let minH = min(height[i], height[j])
            maxArea = max(maxArea, (j - i) * minH)
            if height[i] < height[j] {
                i += 1
            }else {
                j -= 1
            }
        }
        return maxArea
    }
}
// @lc code=end

