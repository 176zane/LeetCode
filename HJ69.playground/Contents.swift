import Foundation

var rowA = 0
var rowB = 0
var col = 0
var matrixA = [[Int]]()
var matrixB = [[Int]]()
var result = [[Int]]()
if let rowAStr = readLine(),let rowBStr = readLine(),let colStr = readLine() {
    rowA = Int(rowAStr)!
    rowB = Int(rowBStr)!
    col = Int(colStr)!
    result = Array(repeating: Array(repeating: 0, count: col), count: rowA)
}
while let str = readLine() {
    let parts = str.split(separator: " ").map{Int($0)!}
    if matrixA.count < rowA {
        matrixA.append(parts)
    }else {
        matrixB.append(parts)
    }
}
for i in 0..<rowA {
    for j in 0..<col {
        for k in 0..<rowB {
            result[i][j] += matrixA[i][k] * matrixB[k][j]
        }
    }
}

for i in 0..<rowA {
    for j in 0..<col {
        print(result[i][j],terminator: " ")
    }
    print("")
}
