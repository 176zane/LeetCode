import Foundation

if let str = readLine() {
    var n = Int(str)!
    var result = [[Int]]()
    for i in (1...n).reversed() {
        var a = Array(repeating: 0, count: i)
        result.append(a)
    }
    result[0][0] = 1
    for i in 1..<result.count {
        result[i][0] = result[i-1][0] + i
    }
    for i in 0..<result.count {
        for j in 1..<result[i].count {
            result[i][j] = result[i][j-1] + j + i + 1
        }
    }
    
    for i in 0..<result.count {
        for j in 0..<result[i].count {
            print(result[i][j],terminator: " ")
        }
        print("")
    }
}

