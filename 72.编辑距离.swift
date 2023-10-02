/*
 * @lc app=leetcode.cn id=72 lang=swift
 *
 * [72] 编辑距离
 */

// @lc code=start

//https://leetcode.cn/problems/edit-distance/solutions/6455/zi-di-xiang-shang-he-zi-ding-xiang-xia-by-powcai-3/

class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        if word1.count == 0 {
            return word2.count
        }
        if word2.count == 0 {
            return word1.count
        }
        let word1 = Array(word1)
        let word2 = Array(word2)
        //dp[i][j] 代表 word1 中前 i 个字符，变换到 word2 中前 j 个字符，最短需要操作的次数
        var dp = Array(repeating: Array(repeating: 0, count: word2.count+1), count: word1.count+1)
        for i in 0...word1.count {
            dp[i][0] = i
        }
        for j in 0...word2.count {
            dp[0][j] = j
        }
        
        for i in 1...word1.count {
            for j in 1...word2.count {
                if word1[i-1] == word2[j-1]{
                    dp[i][j] = dp[i-1][j-1]
                }else {
                    dp[i][j] = min(dp[i-1][j]+1, dp[i][j-1]+1, dp[i-1][j-1]+1)
                }
            }
        }
        return dp[word1.count][word2.count]
    }
}

// @lc code=end

