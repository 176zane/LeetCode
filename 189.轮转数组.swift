/*
 * @lc app=leetcode.cn id=189 lang=swift
 *
 * [189] 轮转数组
 */

// @lc code=start
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        reverse(&nums,0,nums.count-1)
        let i = (k % nums.count) - 1
        reverse(&nums, 0, i)
        reverse(&nums, i+1, nums.count-1)
    }
    func reverse(_ nums: inout [Int],_ l: Int,_ r: Int) {
        var i = l,j = r
        while i < j {
            let temp = nums[i]
            nums[i] = nums[j]
            nums[j] = temp
            i += 1
            j -= 1
        }
    }
}
class Solution2 {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var r = Array(repeating: 0, count: nums.count)
        for (i,v) in nums.enumerated() {
            let ri = (i+k)%nums.count
            r[ri]=v
        }
        nums = r
    }
}
// @lc code=end

