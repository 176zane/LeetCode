/*
 * @lc app=leetcode.cn id=283 lang=swift
 *
 * [283] 移动零
 */

// @lc code=start
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for (i,v) in nums.enumerated() {
            if v != 0 {
                var temp = nums[j]
                nums[j] = v
                nums[i] = temp
                j += 1
            }
        }
    }
}
class Solution2 {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount = 0 
        for (i, v) in nums.enumerated() {
            if v == 0 {
                zeroCount += 1
            } else {
                nums[i - zeroCount] = v
            }
        }
        for i in (nums.count - zeroCount)..<nums.count {
            nums[i] = 0
        }
    }
}
// @lc code=end

