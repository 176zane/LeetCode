/*
 * @lc app=leetcode.cn id=17 lang=swift
 *
 * [17] 电话号码的字母组合
 */

// @lc code=start

//回溯算法
class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        var combinations = [String]()
        if digits.count == 0 { return combinations}
        let digitsArray = Array(digits)
        let phoneMap:[Character:[Character]] = ["2":["a","b","c"],"3":["d","e","f"],"4":["g","h","i"],"5":["j","k","l"],"6":["m","n","o"],"7":["p","q","r","s"],"8":["t","u","v"],"9":["w","x","y","z"]]
        var current = [Character]()
        backTrace(combinations: &combinations, phoneMap: phoneMap, digits: digitsArray, index: 0, current: &current)
        
        return combinations
    }
    
    func backTrace(combinations: inout [String],phoneMap: [Character:[Character]],digits: [Character],index: Int, current: inout [Character]) {
        if index == digits.count {//退出条件
            combinations.append(String(current))
            return
        }
        let num = digits[index]
        if let charArray = phoneMap[num] {
            for c in charArray {
                current.append(c)
                backTrace(combinations: &combinations, phoneMap: phoneMap, digits: digits, index: index+1, current: &current)
                current.removeLast()
            }
        }
    }
}   
    
// @lc code=end

