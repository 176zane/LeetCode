class Solution {
    func selectionSort(_ nums: inout [Int]) {
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
func selectionSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }  // 1
    var sortedArray = array                    // 2
    for i in 0 ..< sortedArray.count - 1 {     // 3
        var minIndex = i
        for j in i + 1 ..< sortedArray.count {   // 4
            if sortedArray[j] < sortedArray[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {               // 5
            sortedArray.swapAt(i, minIndex)
        }
    }
  return sortedArray
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
selectionSort(list)
