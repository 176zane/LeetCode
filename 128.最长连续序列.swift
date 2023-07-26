/*
 * @lc app=leetcode.cn id=128 lang=swift
 *
 * [128] 最长连续序列
 */

// @lc code=start
class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var result = 0
        let numsSet = Set(nums)
        for num in numsSet{
            if !numsSet.contains(num-1) {
                var i = 0
                var j = num
                while numsSet.contains(j) {
                    i += 1
                    j += 1
                }
                result = max(result, i)
            }
        }
        
        return result
    }
}
// @lc code=end

