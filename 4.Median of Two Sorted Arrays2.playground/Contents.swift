class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var result = 0.0
        var a = 0
        var b = 0
        var array = [Int]()
        for _ in 0 ..< (nums1.count + nums2.count) {
            if a==nums1.count {
                array.append(nums2[b])
                b = b+1
                continue
            }
            if b == nums2.count {
                array.append(nums1[a])
                a = a+1
                continue
            }
            if a<nums1.count&&b<nums2.count {
                if nums1[a]<=nums2[b] {
                    array.append(nums1[a])
                    a=a+1
                }else {
                    array.append(nums2[b])
                    b=b+1
                }
            }
        }
        if array.count == 0 {
            return 0.0
        }
        if array.count%2 == 0 {
            result = Double((array[array.count/2-1]+array[array.count/2])) / 2.0
        }else {
            result = Double(array[array.count/2])
        }

        return result
    }
}
var nums1 = [1,3], nums2 = [2]
var s = Solution()
var p = s.findMedianSortedArrays(nums1, nums2)
p = s.findMedianSortedArrays([1,2], [3,4])
