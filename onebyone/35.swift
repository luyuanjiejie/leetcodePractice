// 暴力法
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    for i in 0..<nums.count {
        if nums[i] >= target {
            return i
        }
    }
    return nums.count
}

// 二分法
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1

    while left <= right {
        let middle = left + ((right - left) >> 1)

        if nums[middle] > target {
            right = middle - 1
        }else if nums[middle] < target {
            left = middle + 1
        }else if nums[middle] == target {
            return middle
        }
    }

    return right + 1
}

作者：代码随想录
链接：https://leetcode.cn/problems/search-insert-position/solutions/1022541/dai-ma-sui-xiang-lu-che-di-jiang-tou-er-5zs9r/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
