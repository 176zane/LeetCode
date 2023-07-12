/*
 * @lc app=leetcode.cn id=37 lang=swift
 *
 * [37] 解数独
 */

// @lc code=start
class Solution {
    func solveSudoku(_ board: inout [[Character]]) {
        var rowSetArray = Array(repeating: Set<Character>(), count: 9)
        var columnSetArray = Array(repeating: Set<Character>(), count: 9)
        var boxSetArray = Array(repeating: Set<Character>(), count: 9)
        
        for i in 0..<board.count {//初始化数据
            for j in 0..<board[i].count {
                if board[i][j] == "." {
                    continue
                }
                let boxNum = (i/3)*3+(j/3)
                rowSetArray[i].insert(board[i][j])
                columnSetArray[j].insert(board[i][j])
                boxSetArray[boxNum].insert(board[i][j])
            }
        }
        recusiveSolve(&board, 0, 0, &rowSetArray, &columnSetArray, &boxSetArray)
    }
    func recusiveSolve(_ board: inout [[Character]],_ row:Int, _ col:Int,_ rowSetArray: inout Array<Set<Character>>,_ columnSetArray:inout Array<Set<Character>>,_ boxSetArray:inout Array<Set<Character>>) -> Bool {
        
        if col == board.count {
            if row == board.count-1 {
                return true
            }else {
                return recusiveSolve(&board, row+1, 0, &rowSetArray, &columnSetArray, &boxSetArray)
            }
        }
        let charArray:[Character] = ["1","2","3","4","5","6","7","8","9"]
                
   if board[row][col] == "." {
            let boxNum = (row/3)*3+(col/3)
            for c in charArray {
                let contain = rowSetArray[row].contains(c)||columnSetArray[col].contains(c)||boxSetArray[boxNum].contains(c)
                if !contain{
                    rowSetArray[row].insert(c)
                    columnSetArray[col].insert(c)
                    boxSetArray[boxNum].insert(c)
                    board[row][col] = c
                    if recusiveSolve(&board, row, col+1, &rowSetArray, &columnSetArray, &boxSetArray){
                        return true
                    }else {
                        rowSetArray[row].remove(c)
                        columnSetArray[col].remove(c)
                        boxSetArray[boxNum].remove(c)
                        board[row][col] = "."
                    }
                }
            }
        }else {
            return recusiveSolve(&board, row, col+1, &rowSetArray, &columnSetArray, &boxSetArray)
        }
        return false
    }
}
// @lc code=end

