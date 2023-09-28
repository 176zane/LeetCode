/*
 * @lc app=leetcode.cn id=46 lang=swift
 *
 * [46] 全排列
 */

// @lc code=start
class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var resultArray = [[Int]]()
        var used = Array(repeating: false, count: nums.count)
        var path = [Int]()
        
        dfs(nums, 0, &path, &used, &resultArray)
        return resultArray
    }
    func dfs(_ nums:[Int],_ i: Int,_ path: inout [Int], _ used: inout [Bool],_ resultArray: inout [[Int]]) {
        if i == nums.count {
            resultArray.append(path)
            return
        }
        for n in 0..<nums.count {
            if !used[n]{
                used[n] = true
                path.append(nums[n])
                dfs(nums,i+1,&path,&used,&resultArray)
                used[n] = false
                path.removeLast()
            }
        }
    }
    
}
// @lc code=end

