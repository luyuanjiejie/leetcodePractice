func search(_ nums: [Int], _ target: Int) -> Int {
    return helper(nums, target, 0, nums.count - 1)
}

func helper(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int{
    if left > right { return -1 }
    
    let mid = (left + right) / 2
    
    if nums[mid] == target { return mid }
    return max(helper(nums, target, left, mid - 1), helper(nums, target, mid + 1, right))
}

作者：Fervent Hugle
链接：https://leetcode.cn/problems/search-in-rotated-sorted-array/solutions/504104/di-gui-jian-dan-yi-dong-by-fervent-hugle/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
