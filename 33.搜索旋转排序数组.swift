/*
 * @lc app=leetcode.cn id=33 lang=swift
 *
 * [33] 搜索旋转排序数组
 */

// @lc code=start
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0,r = nums.count-1
        while l < r {
            var mid = (l + r) / 2
            if nums[mid] == target {
                return mid
            }
            //一定会有一边有序
            if nums[l] <= nums[mid] {//左边有序  //<=很重要！！！
                if nums[mid] < target || target < nums[l] {
                    l = mid + 1
                }else {
                    r = mid - 1
                }
            }else {//右边有序
                if nums[mid] > target || target > nums[r] {
                    r = mid - 1
                }else {
                    l = mid + 1
                }
            }
        }
        return nums[l] == target ? l : (-1)
    }
}
// @lc code=end

