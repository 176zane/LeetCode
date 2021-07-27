//ccc 这种情况没考虑到
class Solution {
    func longestPalindrome(_ s: String) -> String {
        let strArray = Array(s)
        var start = 0
        var end = 0
        var length = 0
        var resultS = String()
        
        for (i,_) in strArray.enumerated() {
            var currentLength = 0
            var a = 0
            var b = 0
            if i+1<strArray.count {
                if strArray[i] == strArray[i+1] {//abb或者abba霍aaaa,但是没考虑到aaa
                    a = i
                    b = i+1
                    while (a > -1)&&(b < strArray.count)&&strArray[a] == strArray[b] {
                        a = a-1
                        b = b+1
                    }
                    currentLength = b-a-1
                    if currentLength>length {
                        start = a+1
                        end = b-1
                        length = currentLength
                    }
                }
                if (i > 0) && (strArray[i-1] == strArray[i+1]) {//aba或者aaa
                    a = i-1
                    b = i+1
                    while (a > -1)&&(b < strArray.count)&&strArray[a] == strArray[b] {
                        a = a-1
                        b = b+1
                    }
                    currentLength = b-a-1
                    if currentLength>length {
                        start = a+1
                        end = b-1
                        length = currentLength
                    }
                }
            }else {
                currentLength = 1
                if currentLength>length {
                    start = i
                    end = i
                    length = currentLength
                }
            }
        }
        
        if length == 1 {
            resultS = String([strArray[0]])
        }else {
            resultS = String(strArray[start...end])
        }
        return resultS
    }
}

let s = Solution()
var a = s.longestPalindrome("ccc")




/**
 * Question Link: https://leetcode.com/problems/longest-palindromic-substring/
 * Primary idea: Find the longest palindrome string from every index at the center.
 * Time Complexity: O(n^2), Space Complexity: O(1)
 *
 */

class LongestPalindromicSubstring {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {
            return s
        }
        
        let sChars = Array(s)
        var maxLen = 0, start = 0
        
        for i in 0..<sChars.count {
            searchPalindrome(sChars, i, i, &start, &maxLen)
            searchPalindrome(sChars, i, i + 1, &start, &maxLen)
        }
        
        return String(sChars[start..<start + maxLen])
    }
    
    private func searchPalindrome(_ chars: [Character], _ l: Int, _ r: Int, _ start: inout Int, _ maxLen: inout Int) {
        var l = l, r = r
        
        while l >= 0 && r < chars.count && chars[l] == chars[r] {
            l -= 1
            r += 1
        }
        
        if maxLen < r - l - 1 {
            start = l + 1
            maxLen = r - l - 1
        }
    }
}
