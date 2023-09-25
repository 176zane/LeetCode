/*
 * @lc app=leetcode.cn id=5 lang=swift
 *
 * [5] 最长回文子串
 */

// @lc code=start
//
class Solution {
    func longestPalindrome(_ s: String) -> String {
        var cArray = Array(s)
        var resultS = String()
        for i in 0..<cArray.count {
            let maxS = expand(cArray, i, i)
            resultS = resultS.count > maxS.count ? resultS : maxS
            if i + 1 < cArray.count && cArray[i] == cArray[i+1] {
                let maxS = expand(cArray, i, i+1)
                resultS = resultS.count > maxS.count ? resultS : maxS
            }
        }
        return resultS
    }
    func expand(_ s:[Character],_ left: Int,_ right: Int) -> String {
        var left = left,right = right
        while left >= 0 && right < s.count && s[left] == s[right] {
            left -= 1
            right += 1
        }
        let max = s[left+1...right-1]
        return String(max)
    }
}

//动态规划
class Solution3 {
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {return s}
        
        var cArray = Array(s)
        var resultArray = Array(repeating: Array(repeating: false, count: cArray.count), count: cArray.count)
        var l = 0
        var r = 0
        for j in 1..<cArray.count {
            for i in 0..<j {
                if cArray[i]==cArray[j] && (resultArray[i+1][j-1] || j-i < 3) {
                    resultArray[i][j] = true
                    if j - i > r - l {
                        l = i
                        r = j
                    }
                }
            }
        }
        
        return String(cArray[l...r])
    }
}




class Solution2 {
    //方法正确 但是时间复杂度太高超出测试用时
    func longestPalindrome(_ s: String) -> String {
        var longest = String()
        var cArray = Array(s)
        for i in 0..<cArray.count {
            for j in (i..<cArray.count).reversed() {
                let ls = String(cArray[i...j])
                let rs = String(cArray[i...j].reversed())
                if ls.count > longest.count && ls == rs {
                    longest = ls
                }
            }
        }
        return longest
    }
}
// @lc code=end

