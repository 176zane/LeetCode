/*
 * @lc app=leetcode.cn id=463 lang=swift
 *
 * [463] 岛屿的周长
 */

// @lc code=start
class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var grid = grid
        var long = 0
        for i in 0..<grid.count {
            for j in 0..<grid.first!.count {
                if grid[i][j] == 1 {
                    dfs(&grid, i, j, &long)
                    break
                }
            }
        }
        return long
    }
    func dfs(_ grid: inout [[Int]],_ i: Int,_ j: Int, _  long: inout Int) {
        if i < 0 || i == grid.count || j < 0 || j == grid.first!.count || grid[i][j] == 0{
            long += 1
            return
        }
        if grid[i][j] == 1 {
            grid[i][j] = 2
            dfs(&grid, i+1, j, &long)
            dfs(&grid, i, j+1, &long)
            dfs(&grid, i-1, j, &long)
            dfs(&grid, i, j-1, &long)
        }
    }
}
// @lc code=end

