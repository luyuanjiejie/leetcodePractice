
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var arr = haystack.components(separatedBy: needle)
        return arr.count > 1 ? Array(arr[0]).count : -1
    }
}

作者：盼盼法式小面包🍞
链接：https://leetcode.cn/problems/find-the-index-of-the-first-occurrence-in-a-string/solutions/1252269/swift-3xing-dai-ma-tou-lan-jie-fa-by-pan-8b56/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
