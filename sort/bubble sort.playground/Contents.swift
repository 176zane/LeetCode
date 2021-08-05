class Solution {
    func bubbleSort(_ nums: inout [Int]) {
        for i in 0..<nums.count {
            var changed = false
            for j in 0..<nums.count-1-i {
                if nums[j] > nums[j+1] {
                    let temp = nums[j+1]
                    nums[j+1] = nums[j]
                    nums[j] = temp
                    changed = true
                }
            }
            if !changed {
                break
            }
        }
    }
}
var s = Solution()
var nums = [2, 3, 5, 7, 4, 8, 6 ,10 ,1, 9]
s.bubbleSort(&nums)
print(nums)
