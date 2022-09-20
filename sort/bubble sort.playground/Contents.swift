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



func bubbleSort(_ array: [Int]) ->[Int] {
    var sortedArray = array
    for i in 0..<sortedArray.count {
        var flag = true
        for j in 0..<sortedArray.count-i-1{
            if sortedArray[j] > sortedArray[j+1] {
                let temp = sortedArray[j+1]
                sortedArray[j+1] = sortedArray[j]
                sortedArray[j] = temp
                flag = false
            }
        }
        if flag {break}
    }
    return sortedArray
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
bubbleSort(list)
