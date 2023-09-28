/*
 * @lc app=leetcode.cn id=39 lang=swift
 *
 * [39] 组合总和
 */

// @lc code=start
class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var current = [Int]()
        dfs(candidates,0,target,&current,&result)
        return result
    }
    func dfs(_ candidates:[Int],_ index: Int,_ target: Int,_ current: inout [Int],_ result: inout [[Int]] ) {
        if index == candidates.count {//candidates遍历完  返回
            return
        }
        if target == 0 {//找到结果 返回
            result.append(current)
            return
        }
        
        //直接跳过当前项
        dfs(candidates,index+1,target,&current,&result)
        
        if target - candidates[index] >= 0 {
            current.append(candidates[index])
            //添加当前项后 继续遍历
            dfs(candidates,index,target-candidates[index],&current,&result)
            current.removeLast()
        } 
    }
}
// @lc code=end

