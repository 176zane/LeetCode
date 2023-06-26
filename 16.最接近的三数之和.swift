/*
 * @lc app=leetcode.cn id=16 lang=swift
 *
 * [16] 最接近的三数之和
 */

// @lc code=start
class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        var result = nums[0] + nums[1] + nums[2]
        var near = abs(result - target)
        
        for i in 0..<nums.count-2 {
            var j = i+1, k = nums.count-1
            while j < k {
                let sum = nums[i] + nums[j] + nums[k]
                if abs(sum - target) < near {
                    near = abs(sum - target)
                    result = sum
                }
                
                sum > target ? (k -= 1) : (j += 1)
                
            }
        }
        return result
    }
}
// @lc code=end

