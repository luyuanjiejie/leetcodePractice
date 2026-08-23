class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        var i = nums.count-1, j = i
        
        while i > 0, nums[i-1] >= nums[i] { i -= 1 }
        if i <= 0 { nums = nums.reversed(); return }
        
        while j > i, nums[j] <= nums[i-1] { j -= 1 }
        nums.swapAt(i-1, j)
        nums = nums[..<i] + nums[i...].reversed()
    }
}

作者：lll
链接：https://leetcode.cn/problems/next-permutation/solutions/1475968/by-leih1-a0rx/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
