/*
 * @lc app=leetcode.cn id=36 lang=swift
 *
 * [36] 有效的数独
 */

// @lc code=start
class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rowSetArray = Array(repeating: Set<Character>(), count: 9)
        var columnSetArray = Array(repeating: Set<Character>(), count: 9)
        var boxSetArray = Array(repeating: Set<Character>(), count: 9)
        
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if board[i][j] == "." {
                    continue
                }
                let boxNum = (i/3)*3+(j/3)
                if rowSetArray[i].contains(board[i][j])||columnSetArray[j].contains(board[i][j])||boxSetArray[boxNum].contains(board[i][j]) {
                    return false
                }
                rowSetArray[i].insert(board[i][j])
                columnSetArray[j].insert(board[i][j])
                boxSetArray[boxNum].insert(board[i][j])
            }
        }
        return true
    }
}
// @lc code=end

