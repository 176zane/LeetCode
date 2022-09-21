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


//

func insertionSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array } 
    var sortedArray = array
    for i in 1..<sortedArray.count {
        var j = i
        let temp = sortedArray[j]
        while j > 0 && sortedArray[j - 1] > temp {
            sortedArray[j] = sortedArray[j - 1]                // 1
            j -= 1
        }
        sortedArray[j] = temp                      // 2
    }
    return sortedArray
}

let list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
insertionSort(list)
