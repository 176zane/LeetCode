class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var x = x
        var a = [Int]()
        while x != 0 {
            a.append(x % 10)
            x = x / 10
        }
        for (i,num) in a.enumerated() {
            if num != a[a.count - i - 1] {
                return false
            }
        }
        return true
    }
}


/**
 * Question Link: https://leetcode.com/problems/palindrome-number/
 * Primary idea: Negative numbers are not palindromes.
 *
 * Time Complexity: O(1), Space Complexity: O(1)
 */

 class PalindromeNumber {
    func isPalindrome(x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }
        
        var x = x
        var div = 1
        
        while (x / div >= 10) {
            div = div * 10
        }
        
        while (x > 0) {
            let left = x / div
            let right = x % 10
            
            if (left != right) {
                return false
            }
            
            x = (x % div) / 10
            div = div / 100
        }
        
        return true
    }
}
