/*
 * @lc app=leetcode.cn id=13 lang=swift
 *
 * [13] 罗马数字转整数
 */

// @lc code=start
class Solution {
    func romanToInt(_ s: String) -> Int {
        let dic :[Character:Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        var result = 0
        var pre :Character = "I"
        for c in s.reversed() {
            if let v = dic[c] {
                result += v
                if let p = dic[pre], p > v {
                    result -= v*2
                }
            }
            pre = c
        }
        return result
    }
}

// @lc code=end

