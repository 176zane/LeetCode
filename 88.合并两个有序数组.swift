/*
 * @lc app=leetcode.cn id=88 lang=swift
 *
 * [88] 合并两个有序数组
 */

// @lc code=start
//逆向遍历 注意细节
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m-1 ,j = n-1
        while i >= 0 || j >= 0 {
            var tail = i + j + 1
            if i < 0 {
                nums1[tail] = nums2[j]
                j -= 1
            }else if j < 0 {
                nums1[tail] = nums1[i]
                i -= 1
            }else if nums1[i] > nums2[j] {
                nums1[tail] = nums1[i]
                i -= 1
            }else {
                nums1[tail] = nums2[j]
                j -= 1
            }
        }
    }
}


class Solution2 {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let nums3 = Array(nums1)
        var i = 0, j = 0
        while i < m && j < n {
            if nums3[i] <= nums2[j] {
                nums1[i+j] = nums3[i]
                i += 1
            }else {
                nums1[i+j] = nums2[j]
                j += 1
            }
        }
        while i < m {
            nums1[i+j] = nums3[i]
            i += 1
        }
        while j < n {
            nums1[i+j] = nums2[j]
            j += 1
        }
        
    }
}
// @lc code=end

