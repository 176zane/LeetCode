class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var result = 0
        var start = 0
        var dict = [Character:Int]()
        
        for (index,char) in s.enumerated() {
            if let pos = dict[char] {
                start = max(start, pos+1)
            }
            let current = index - start + 1
            result = max(result, current)
            
            dict[char] = index
        }
        return result
    }
}
//abba
