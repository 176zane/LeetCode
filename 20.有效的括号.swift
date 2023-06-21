/*
 * @lc app=leetcode.cn id=20 lang=swift
 *
 * [20] 有效的括号
 */

// @lc code=start
class Solution {
    func isValid(_ s: String) -> Bool {
        var isValid = true
        let dic:[Character:Character] = ["(":")","{":"}","[":"]"]
        var array = [Character]()
        for i in s {
            if dic[i] != nil {
                array.append(i)
            }else {
                if array.isEmpty || dic[array.removeLast()] != i {
                    isValid = false
                }
            }
        }
        if !array.isEmpty {
            isValid = false
        }
        return isValid
    }
}
// @lc code=end

