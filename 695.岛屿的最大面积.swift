/*
 * @lc app=leetcode.cn id=695 lang=swift
 *
 * [695] 岛屿的最大面积
 */

// @lc code=start
class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var maxArea = 0
        for i in 0..<grid.count {
            for j in 0..<grid.first!.count {
                if grid[i][j] == 1 {
                    var area = 0
                    dfs(&grid, i, j, &area)
                    maxArea = max(maxArea, area)
                    
                }
            }
        }
        return maxArea
    }

    func dfs(_ grid: inout [[Int]],_ i: Int,_ j: Int, _  area: inout Int) {
        if i < 0 || i == grid.count || j < 0 || j == grid.first!.count || grid[i][j] == 0{
            return
        }
        if grid[i][j] == 1 {
            area += 1
            grid[i][j] = 2
            dfs(&grid, i+1, j, &area)
            dfs(&grid, i, j+1, &area)
            dfs(&grid, i-1, j, &area)
            dfs(&grid, i, j-1, &area)
        }
    }
}

// @lc code=end

