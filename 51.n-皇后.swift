/*
 * @lc app=leetcode.cn id=51 lang=swift
 *
 * [51] N 皇后
 */

// @lc code=start
class Solution {
    func solveNQueens(_ n: Int) -> [[String]] {
        var resultArray = [[String]]()
        var matrix :[[Character]] = Array(repeating: Array(repeating: ".", count: n), count: n)
        recuriveResolve(&matrix,0,&resultArray)
        return resultArray
    }
    func recuriveResolve(_ matrix: inout [[Character]],_ row: Int,_ resultArray: inout [[String]]) {
        if row == matrix.count {
            var array = [String]()
            for i in matrix {
                var s = String(i)
                array.append(s)
            }
            resultArray.append(array)
            return//第一遍写的时候忘记return  这里终止条件  记得终止！！！
        }
        for col in 0..<matrix.count {
            if canPut(matrix,row,col) {
                matrix[row][col] = "Q"
                recuriveResolve(&matrix,row+1,&resultArray)
                matrix[row][col] = "."//状态重置！！！
            }
        }
        
    }
    func canPut(_ matrix:[[Character]],_ i: Int,_ j: Int) -> Bool {
        //只判断列、左上、右上
        for x in 0..<i {
            if matrix[x][j] == "Q" {return false}//判断每一行的这一列
        }
        var p = i, q = j
        while p >= 0 && q >= 0 {
            if matrix[p][q] == "Q" {return false}
            p -= 1
            q -= 1
        }
        p = i
        q = j
        while p >= 0 && q < matrix.count {
            if matrix[p][q] == "Q" {return false}
            p -= 1
            q += 1
        }
        return true
    }
}





// @lc code=end

