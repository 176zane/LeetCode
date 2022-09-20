class Solution {
    func mergeSort(_ nums: inout [Int]) {
        for i in 0..<nums.count {
            var j = i
            var min = nums[i]
            var minIndex = j
            while j<nums.count {
                if nums[j]<min {
                    min = nums[j]
                    minIndex = j
                }
                j += 1
            }
            let temp = nums[i]
            nums[i] = min
            nums[minIndex] = temp
        }
    }
}
var s = Solution()
var nums = [2, 3, 5, 7, 4, 8, 6 ,10 ,1, 9]
s.selectionSort(&nums)
print(nums)

//选择排序的交换过程中破坏了稳定性，其不是稳定的排序算法
