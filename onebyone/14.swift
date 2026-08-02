
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let first = strs.min(), let last = strs.max() else { return "" }
        return first.commonPrefix(with: last, options: .literal)
    }
}

