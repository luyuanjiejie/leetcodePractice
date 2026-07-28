
class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        /**
         * Dynamic programming approach to solve regex matching problem.
         *
         * @param s input string
         * @param p pattern string containing '.' and '*'
         * @return True if s fully matches p, otherwise False
         */
        let s = Array(s), p = Array(p)
        let m = s.count, n = p.count
        
        // DP table where dp[i][j] stores whether s[0..i-1] matches p[0..j-1]
        var dp = Array(repeating: Array(repeating: false, count: n + 1), count: m + 1)
        dp[0][0] = true

        // Initialize '*' cases that match empty sequences
        for j in 1...n {
            if p[j - 1] == "*" {
                dp[0][j] = dp[0][j - 2]
            }
        }

        // Fill the DP table
        for i in 1...m {
            for j in 1...n {
                if p[j - 1] == s[i - 1] || p[j - 1] == "." {
                    dp[i][j] = dp[i - 1][j - 1] // Direct match or '.'
                } else if p[j - 1] == "*" {
                    // '*' acts as zero occurrences or multiple occurrences of the previous character
                    dp[i][j] = dp[i][j - 2] || ((s[i - 1] == p[j - 2] || p[j - 2] == ".") && dp[i - 1][j])
                }
            }
        }

        return dp[m][n]
    }
}

作者：Anonymous_user
链接：https://leetcode.cn/problems/regular-expression-matching/solutions/3065937/dong-tai-gui-hua-2wei-biao-ge-by-ttuser-f4cr/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
