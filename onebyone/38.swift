
class Solution {
    func countAndSay(_ n: Int) -> String {
        guard n > 1 else { return "1" }
        let str = countAndSay(n - 1)
        let strs = Array(str)
        var res = ""
        var count = 0
        var baseStr = strs.first

        for i in 0 ..< strs.count {
            if strs[i] == baseStr {
                // Count right until next digit is different
                count += 1
            } else {
                res.append(String(count))
                res.append(baseStr!)
                count = 1
                baseStr = strs[i]
            }
        }
        res.append(String(count))
        res.append(baseStr!)
        return res
    }
}
/*
1
11
21
1211
111221
312211
*/

作者：bento
链接：https://leetcode.cn/problems/count-and-say/solutions/525849/38-count-and-say-by-bento-9gm2/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
