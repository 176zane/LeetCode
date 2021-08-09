class Solution {
    func insertionSort(_ nums: inout [Int]) {
        for i in 1..<nums.count {
            let value = nums[i]
            var p = i - 1
            while p >= 0 && nums[p] > value {
                nums[p+1] = nums[p]
                p -= 1
            }
            nums[p+1] = value
        }
    }
}
var s = Solution()
var nums = [2, 3, 5, 7, 4, 8, 6 ,10 ,1, 9]
s.insertionSort(&nums)
print(nums)
