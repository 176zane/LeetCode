/*
 * @lc app=leetcode.cn id=150 lang=swift
 *
 * [150] 逆波兰表达式求值
 */

// @lc code=start
class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stackArray = [Int]()
        for s in tokens {
            if let num = Int(s){
                stackArray.append(num)
            }else if let a = stackArray.popLast(),let b = stackArray.popLast(){
                var result = 0
                switch s {
                    case "+" : result = b + a
                    case "-" : result = b - a
                    case "*" : result = b * a
                    case "/" : result = b / a
                    default : fatalError("invalid inputt")
                }
                stackArray.append(result)
            }
        }
        return stackArray[0]
    }
}
// @lc code=end

