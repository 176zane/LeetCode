class Solution {
    func myAtoi(_ s: String) -> Int {
        var result : Int64 = 0
        var processing = false
        var negtive = false
        for c in s {
            if processing  {
                if let num = c.wholeNumberValue {
                    result = result * 10 + Int64(num)
                    if result > Int32.max {
                        break
                    }
                }else {
                    break;
                }
            }else {
                if c == " " {
                    continue
                }
                if c == "-" {
                    negtive = true
                    processing = true
                    continue
                }
                if c == "+" {
                    processing = true
                    continue
                }
                if let num = c.wholeNumberValue {
                    result = Int64(num)
                    processing = true
                }else {
                    break
                }
            }
        }
        if negtive {
            result = result * (-1)
        }
        if result > Int32.max {
            result = (Int64)(Int32.max)
        }
        if result < Int32.min {
            result = (Int64)(Int32.min)
        }
        let a = (Int)(result)
        return a
    }
}

var s = Solution()
//s.myAtoi("words and 987")//没有考虑到这种情况
s.myAtoi(" -42")
s.myAtoi("20000000000000000000")//没有考虑到这种情况
