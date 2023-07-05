/*
 * @lc app=leetcode.cn id=27 lang=swift
 *
 * [27] 移除元素
 */

// @lc code=start
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var k = nums.count-1
        for (i,v) in nums.enumerated().reversed() {
            if v == val {
                var temp = nums[k]
                nums[k] = v
                nums[i] = temp
                k = k-1
            }
        }
        return k+1
    }
}
// @lc code=end

