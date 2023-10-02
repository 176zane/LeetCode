
//这个题还是得找规律   直接算出所有值 会运行出错
import Foundation

if let nStr = readLine() {
    let n = Int(nStr)!
    print(getEven(n))
}

func getEven(_ n:Int) -> Int{
    let col = 2*n-1
    let row = n
    var matrix = Array(repeating: Array(repeating: 0, count: col), count: row)
    matrix[0][n-1] = 1
    for i in 1..<row {
        for j in 0..<col {
            if j-1 >= 0{
                matrix[i][j] += matrix[i-1][j-1]
            }
            
            matrix[i][j] += matrix[i-1][j]
            if j+1 < col{
                matrix[i][j] += matrix[i-1][j+1]
            }
        }
    }
    for (i,v) in matrix[n-1].enumerated() {
        if v%2 == 0 {
            return i+1 //输出的是第几个   索引+1
        }
    }
    return -1
}
getEven(44)

