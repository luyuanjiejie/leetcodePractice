//给定一个字符串 s ，请你找出其中不含有重复字符的 最长 子串 的长度

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if (s.count == 0) {
            return 0
        }
        var last = Array(repeating: -1, count: 128)
        let unicode = s.unicodeScalars.map{Int($0.value)}
        //print (unicode)
        var maxLength = 0
        for (i, e) in unicode.enumerated() {
            let tempLength = last[e] == -1 ? 1 : i - last[e]
            last[e] = max(last[e], i)
            maxLength = max(maxLength, tempLength)
        }
        return maxLength;
    }
}

