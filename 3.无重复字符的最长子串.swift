/*
 * @lc app=leetcode.cn id=3 lang=swift
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
       
    }
}
class Solution2 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var max = 0
        var cArray : [Character] = []
        for c in s {
            if let index = cArray.firstIndex(of: c) {
                cArray.removeSubrange(0...index)
            }
            cArray.append(c)
            max = cArray.count > max ? cArray.count : max
        }
        
        return max
    }
}
class Solution3{
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var max = 0
        let cArray = Array(s)
        
        for i in 0..<cArray.count {
            var cSet: Set<Character>  = []
            for j in i..<cArray.count {
                if cSet.contains(cArray[j]) {
                    let v = j - i
                    max = v > max ? v : max
                    cSet = []
                    break
                }else {
                    cSet.insert(cArray[j])
                    
                }
            }
            if cSet.count > max {//字符串中没有重复的字符
                max = cSet.count
            }
        }
        return max
    }
}
// @lc code=end

