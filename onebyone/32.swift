class Solution {
    func longestValidParentheses(_ s: String) -> Int {
        var strArr = Array(s)
        var stack = [-1]
        var result = 0
        for i in 0 ..< strArr.count {
            if strArr[i] == "(" {
                stack.append(i)
            } else {
                if stack.count > 1 && strArr[stack.last!] == "(" {
                    stack.removeLast()
                    result = max(result, i - stack.last!)
                } else {
                    stack.append(i)
                }
            }
        }
        return result
    }
}

作者：bento
链接：https://leetcode.cn/problems/longest-valid-parentheses/solutions/1516255/32-longest-valid-parentheses-by-bento-sr2n/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
