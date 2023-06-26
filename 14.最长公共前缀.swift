/*
 * @lc app=leetcode.cn id=14 lang=swift
 *
 * [14] 最长公共前缀
 */

// @lc code=start
//写的太丑 看答案
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {return ""}
        var minS = strs[0]
        
        for s in strs {
            if s.count < minS.count {
                minS = s
            }
        }
        let minArray = Array(minS)
        for i in (0..<minArray.count).reversed() {
            var pre = String(minArray[0...i])
            var all = true
            for s in strs {
                if !s.hasPrefix(pre) {
                    all = false
                    break
                }
            }
            if all == true {
                return String(pre)
            }
        }
        return ""
    }
}
// @lc code=end

