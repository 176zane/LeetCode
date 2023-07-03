/*
 * @lc app=leetcode.cn id=22 lang=swift
 *
 * [22] 括号生成
 */

// @lc code=start

//https://leetcode.cn/problems/generate-parentheses/solutions/35947/hui-su-suan-fa-by-liweiwei1419/
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        var s = String()
        dfs(n, n, &s, &result)
        return result
    }
    //left 左括号剩余数量
    func dfs(_ left :Int, _ right: Int,_ currentString: inout String, _ res: inout [String]) {
        if left == 0 && right == 0 {
            res.append(currentString)
        }
        if left > right {
            return
        }
        if left > 0 {
            var s = currentString + "("
            dfs(left-1, right,&s, &res)
        }
        if right > 0 {
            var s = currentString + ")"
            dfs(left, right-1,&s, &res)
        }
    }
}

// @lc code=end

