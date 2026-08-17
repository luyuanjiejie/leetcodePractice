
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var cur = 0
        for num in nums {
            if num != val {
                nums[cur] = num
                cur += 1
            }
        }
        return cur
    }
}

作者：ruibobo
链接：https://leetcode.cn/problems/remove-element/solutions/2663615/shuang-zhi-zhen-by-swift-u3w7/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
