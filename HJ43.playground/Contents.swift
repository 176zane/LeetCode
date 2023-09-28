//https://leetcode.cn/problems/number-of-islands/solutions/211211/dao-yu-lei-wen-ti-de-tong-yong-jie-fa-dfs-bian-li-/
// 网格dfs 岛屿问题
import Foundation

if let _ = readLine() {
    var matrix = [[Int]]()
    while let str = readLine() {
        var parts = str.split(separator: " ").map{Int($0)!}
        matrix.append(parts)
    }
    var array = [String]()
    if dfs(&matrix,0,0,&array) {
        array.append("(0,0)")
        for r in array.reversed() {
            print(r)
        }
    }
}
//上下左右都能走
func dfs(_ matrix:inout [[Int]],_ i: Int,_ j: Int,_ route: inout [String]) -> Bool {
    if i == matrix.count - 1 && j == matrix.first!.count - 1 {
        return true
    }
    if i == matrix.count || j == matrix.first!.count || i < 0 || j < 0{
        return false
    }
    if matrix[i][j] == 1 || matrix[i][j] == 2 {
        return false
    }else {
        matrix[i][j] = 2//为了不走回头路！  不然会超出内存限制
        if dfs(&matrix, i+1, j,&route) {
            route.append("(\(i+1),\(j))")
            return true
        }
        if dfs(&matrix, i, j+1,&route) {
            route.append("(\(i),\(j+1))")
            return true
        }
        if dfs(&matrix, i-1, j,&route) {
            route.append("(\(i-1),\(j))")
            return true
        }
        if dfs(&matrix, i, j-1,&route) {
            route.append("(\(i),\(j-1))")
            return true
        }
        return false
    }
}
