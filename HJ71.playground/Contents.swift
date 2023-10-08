import Foundation

if let pStr = readLine(),let sStr = readLine(){
    print(isMatch(sStr.lowercased(),pStr.lowercased()))
}

func isMatch(_ s: String, _ p: String) -> Bool {
    let sArray = Array(s)
    let pArray = Array(p)
    let m = sArray.count
    let n = pArray.count
    var dp = Array(repeating: Array(repeating: false, count: n+1), count: m+1)
    //初始化
    dp[0][0] = true //两个空字符串匹配
    if n > 0 {
        for j in 1...n {
            if pArray[j-1] == "*" {
                dp[0][j] = dp[0][j-1]
            }else {
                dp[0][j] = false
            }
        }
    }
    if m > 0 {
        for i in 1...m {
            dp[i][0] = false
        }
    }
    if m > 0 && n > 0 {
        for i in 1...m {
            for j in 1...n {
                if sArray[i-1] == pArray[j-1]{
                    dp[i][j] = dp[i-1][j-1]
                }
                if pArray[j-1] == "?" && (sArray[i-1].isLetter || sArray[i-1].isNumber) {
                    dp[i][j] = dp[i-1][j-1]
                }
                if pArray[j-1] == "*" {
                    dp[i][j] = dp[i-1][j]
                }
                
                if pArray[j-1] == "*" && (sArray[i-1].isLetter || sArray[i-1].isNumber) {
                    //*表示空字符,则保持i不动，j-1，如果dp[i][j-1]能匹配，则dp[i][j]能匹配
                    //*表示多字符,则保持j不动，i-1，如果dp[i-1][j]能匹配，则dp[i][j]能匹配
                    //     因为*表示多字符,则当前i-1加上一个字符后的i也就能匹配
                    dp[i][j] = dp[i-1][j]||dp[i][j-1]
                }
                
            }
        }
    }
    return dp[m][n]
}

