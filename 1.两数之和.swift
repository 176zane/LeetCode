/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic : [Int : Int] = [:]
        for (i,v) in nums.enumerated() {
            if let j = dic[target - v] {
                return [i,j]
            }else {
                dic[v] = i
            }
            
        }
        return []
    }
}

class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count < 2  {
            fatalError("bad input")
        }
        
        for (i,v) in nums.enumerated() {
            for j in i + 1 ..< nums.count {
               
                if i < j ,v + nums[j] == target {
                    return [i ,j]
                }
            }
        }
        fatalError( "bad input")
    }
}

class Solution3 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count < 2  {
            fatalError("bad input")
        }
        
        for (i,v) in nums.enumerated() {
            for (j,k) in nums.reversed().enumerated() {
                let n = nums.count - 1 - j
                if i < n ,v + k == target {
                    return [i ,n]
                }
            }
        }
        fatalError( "bad input")
    }
}
// @lc code=end

