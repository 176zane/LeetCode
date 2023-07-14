/*
 * @lc app=leetcode.cn id=200 lang=swift
 *
 * [200] 岛屿数量
 */

// @lc code=start
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var count = 0
        var grid = grid
        for i in 0..<grid.count {
            for j in 0..<grid.first!.count{
                if grid[i][j] == "1" {
                    count += 1
                    dfs(&grid, i, j)
                }
            }
        }
        return count
    }
    func dfs(_ grid: inout [[Character]],_ row: Int,_ col: Int) {
        if row < 0 || row >= grid.count {return}
        if col < 0 || col >= grid.first!.count {return}
        if grid[row][col] == "1" {
            grid[row][col] = "2"
            dfs(&grid, row-1, col)
            dfs(&grid, row, col-1)
            dfs(&grid, row+1, col)
            dfs(&grid, row, col+1)
        }
    }
}

// @lc code=end

