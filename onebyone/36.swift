
class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        //key-元素，value-出现次数
        var rowHashDic = [[Character:Int]]()//行表
        var colHashDic = [[Character:Int]]()//列表
        var boxHashDic = [[Character:Int]]()//box表
        for _ in 0..<9 {
            rowHashDic.append([Character:Int]())
            colHashDic.append([Character:Int]())
            boxHashDic.append([Character:Int]())
        }
        
        for i in 0..<9 {
            for j in 0..<9 {
                let num = board[i][j], boxIndex = j/3 + (i/3)*3
                if num == "."{
                    continue
                }else if rowHashDic[i][num] ?? 0 > 0 {//第i行有重复
                    return false
                }else if colHashDic[j][num] ?? 0 > 0 {//第j列有重复
                    return false
                }else if boxHashDic[boxIndex][num] ?? 0 > 0 {//3x3box有重复
                    return false
                }else {
                    rowHashDic[i][num] = 1
                    colHashDic[j][num] = 1
                    boxHashDic[boxIndex][num] = 1
                }
            }
        }
        return true
    }
}

作者：荒野
链接：https://leetcode.cn/problems/valid-sudoku/solutions/1000515/you-xiao-shu-du-ha-xi-biao-jie-fa-swift-oj9fe/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
