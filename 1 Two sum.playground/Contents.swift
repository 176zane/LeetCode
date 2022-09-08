class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       // var array = [Int]()
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i]+nums[j]==target {
//                    array.append(i)
//                    array.append(j)
                    return [i,j]
                }
            }
        }
        fatalError("无效输出")
    }
}
let nums = [2,7,11,15]
let target = 9
let s = Solution()
s.twoSum(nums, target)


/**
 * Question Link: https://leetcode.com/problems/two-sum/
 * Primary idea: Traverse the array and store target - nums[i] in a dict
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
  
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
    
            dict[num] = i
        }
  
        fatalError("No valid outputs")
    }
}
let t = TwoSum()
t.twoSum(nums, target)

//
class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var a = [Int]()
        for (i,va) in nums.enumerated() {
            for j in i+1..<nums.count{
                if va + nums[j] == target{
                    a.append(i)
                    a.append(j)
                }
            }
        }
        return a
    }
}




