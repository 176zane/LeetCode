/*
 * @lc app=leetcode.cn id=10 lang=swift
 *
 * [10] 正则表达式匹配
 */

// @lc code=start

//动态规划
class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        
        
    }
}

//https://leetcode.cn/problems/regular-expression-matching/solutions/296114/shou-hui-tu-jie-wo-tai-nan-liao-by-hyj8/
class Solution2 {
    func isMatch(_ s: String, _ p: String) -> Bool {
        let s = Array(s),p = Array(p)
        let sLen = s.count, pLen = p.count
        var dp = Array(repeating: Array(repeating: false, count: pLen+1), count: sLen+1)
        
        dp[0][0] = true//s,p都是空串
        for j in 1...pLen {
            if p[j-1] == "*" {//s空串，p最后一位为*
                dp[0][j] = dp[0][j-2]
            }
        }
        
        //字符下标从0到sLen-1/pLen-1
        //上面字符串个数0的情况作为基本情况输入了，下面从字符1开始遍历
        for i in 1...sLen {
            for j in 1...pLen {
                if s[i-1] == p[j-1] || p[j-1] == "." {//最后一个字符相同或者p最后一个字符为“.”
                    dp[i][j] = dp[i-1][j-1]//最后一个字符匹配，状态取决于到前面情况是否匹配
                }else if p[j-1] == "*" {//最后一个字符不匹配，但是p最后为*
                    if (s[i - 1] == p[j - 2] || p[j - 2] == ".") {
                        dp[i][j] = dp[i][j - 2] || dp[i - 1][j - 2] || dp[i - 1][j];
                    } else {
                        dp[i][j] = dp[i][j - 2];
                    }
                }
            }
        }
        return dp[sLen][pLen]
    }
}
// @lc code=end

