/*
 * @lc app=leetcode.cn id=26 lang=swift
 *
 * [26] 删除有序数组中的重复项
 */

// @lc code=start
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 1 {
            return 1
        }
        var p = 0
        for i in 1..<nums.count {
            if nums[i] != nums[p] {
                p += 1
                nums[p] = nums[i]
            }
        }
        return p+1
    }
}

class Solution2 {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 1 {return 0}
        var k = 0
        for i in nums {
            if i != nums[k] {
                k += 1
                nums[k] = i
            }
        }
        return k+1
    }
}
// @lc code=end

