
class Solution {
    //! 行
    var line:[[Bool]]!
    //! 列
    var column:[[Bool]]!
    //! 块
    var block:[[[Bool]]]!
    var valid = false
    //! 记录空格坐标
    var spaces = [[Int]]()
  
    func solveSudoku(_ board: inout [[Character]]) {
      line = [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 9)
      column = line
      block = [[[Bool]]](repeating: [[Bool]](repeating: [Bool](repeating: false, count: 9), count: 3), count: 3)
    
      for i in 0..<9 {
        for j in 0..<9 {
          if board[i][j] == "." {
            spaces.append([i,j])
          } else {
            let digit = Int(String(board[i][j]))! - 1
            line[i][digit] = true
            column[j][digit] = true
            block[i/3][j/3][digit] = true
          }
        }
      }
    
      DFS(&board,0)
    
  }
  
    func DFS(_ board: inout [[Character]], _ pos:Int) {
      if pos == spaces.count {
        valid = true
        return
      }
    
    
      let space = spaces[pos]
      let i = space[0]
      let j = space[1]
      var digit = 0
    
      while digit<9 && !valid {
        if !line[i][digit] && !column[j][digit] && !block[i/3][j/3][digit] {
          line[i][digit] = true
          column[j][digit] = true
          block[i/3][j/3][digit] = true
          board[i][j] = Character(String(digit+1))
          DFS(&board, pos+1)
          line[i][digit] = false
          column[j][digit] = false
          block[i/3][j/3][digit] = false
        }
        digit+=1
      }
  }
    
}

作者：段雨田
链接：https://leetcode.cn/problems/sudoku-solver/solutions/414444/37-jie-shu-du-by-cobbly/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
