/*
 * @lc app=leetcode.cn id=162 lang=swift
 *
 * [162] 寻找峰值
 */

// @lc code=start
class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        var l = 0, r = nums.count - 1
        while l != r {
            var mid = l + (r-l)/2
            if nums[mid] < nums[mid+1] {
                l = mid + 1
            }else {
                r = mid
            }
        }
        return l
    }
}

//复杂度O(n)
class Solution2 {
    func findPeakElement(_ nums: [Int]) -> Int {
        var pre = Int.min
        for (i,v) in nums.enumerated() {
            if v < pre {
                return i - 1
            }
            pre = v
        }
        return nums.count - 1   
    }
}
// @lc code=end

