/*
 * @lc app=leetcode.cn id=34 lang=swift
 *
 * [34] 在排序数组中查找元素的第一个和最后一个位置
 */

// @lc code=start
class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var l = 0, r = nums.count-1
        var first = -1, last = -1
        while l <= r {//先找first
            var mid = (l+r)/2
            if nums[mid] < target {
                l = mid + 1
            }else if nums[mid] > target {
                r = mid - 1
            }else {
                first = mid
                r = mid - 1
            }
        }
        l = 0
        r = nums.count - 1
        while l <= r {
            var mid = (l+r)/2
            if nums[mid] < target {
                l = mid + 1
            }else if nums[mid] > target {
                r = mid - 1
            }else {
                last = mid
                l = mid + 1
            }
        }
        return [first, last]
    }
}
// @lc code=end

