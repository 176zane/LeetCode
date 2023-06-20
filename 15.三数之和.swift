/*
 * @lc app=leetcode.cn id=15 lang=swift
 *
 * [15] 三数之和
 */

// @lc code=start
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        let nums = nums.sorted()
        for i in 0..<nums.count-2 {
            if nums[i] > 0 {
                break
            }
            if i > 0 && nums[i] == nums[i-1] {
                continue
            }
            var j = i+1,k = nums.count-1
            while j < k {
                let sum = nums[i] + nums[j] + nums[k]
                if sum < 0 {
                    j += 1
                    // while j < k && nums[j] == nums[j-1] {
                    //     j += 1
                    // }
                }else if sum > 0 {
                    k -= 1
                    // while j < k && nums[k] == nums[k+1] {
                    //     k -= 1
                    // }
                }else {
                    result.append([nums[i],nums[j],nums[k]])
                    j += 1
                    while j < k && nums[j] == nums[j-1] {
                        j += 1
                    }
                    k -= 1
                    while j < k && nums[k] == nums[k+1] {
                        k -= 1
                    }
                }
            }
        }
        return result
    }
}


class Solution2 {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = Set<[Int]>()
        for (i,v) in nums.enumerated() {
            if i == nums.count - 2 { break }
            var rest = nums[(i+1)...]
            var sum = v * (-1)
            var dic : [Int:Int] = [:]
            for (j,n) in rest.enumerated() {
                if let k=dic[sum-n] {
                    result.insert([v,n,sum-n].sorted())
                }else {
                    dic[n] = j
                }
                
            }
            
        }
        var array = Array(result)
        return array
    }
}
// @lc code=end

