/*
 * @lc app=leetcode.cn id=4 lang=swift
 *
 * [4] 寻找两个正序数组的中位数
 */

// @lc code=start
class Solution {
     func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var middle = 0.0
        var sum = nums1.count + nums2.count
        var array = [Int]()
        var a = 0
        var b = 0
        for _ in 0..<sum {
            if a == nums1.count {
                array.append(contentsOf: nums2[b..<nums2.count])
                break
            }
            if b == nums2.count {
                array.append(contentsOf: nums1[a..<nums1.count])
                break
            }
            if nums1[a] < nums2[b] {
                array.append(nums1[a])
                a += 1
            } else {
                array.append(nums2[b])
                b += 1
            }
        }
        let n = sum / 2
        if sum % 2 == 0 {
            middle = Double((array[n] + array [n - 1] )) / 2
        } else {
            middle = Double(array[n])
        }
        
        return middle
    }
}
// @lc code=end

