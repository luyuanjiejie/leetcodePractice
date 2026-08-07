func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    var res = [[Int]]()
    var sorted = nums
    sorted.sort()
    for k in 0 ..< sorted.count {
        // 这种剪枝不行,target可能是负数
//            if sorted[k] > target {
//                return res
//            }
        // 去重
        if k > 0 && sorted[k] == sorted[k - 1] {
            continue
        }
        
        let target2 = target - sorted[k]
        for i in (k + 1) ..< sorted.count {
            if i > (k + 1) && sorted[i] == sorted[i - 1] {
                continue
            }
            var left = i + 1
            var right = sorted.count - 1
            while left < right {
                let sum = sorted[i] + sorted[left] + sorted[right]
                if sum < target2 {
                    left += 1
                } else if sum > target2 {
                    right -= 1
                } else {
                    res.append([sorted[k], sorted[i], sorted[left], sorted[right]])
                    while left < right && sorted[left] == sorted[left + 1] {
                        left += 1
                    }
                    while left < right && sorted[right] == sorted[right - 1]  {
                        right -= 1
                    }
                    // 找到答案 双指针同时收缩
                    left += 1
                    right -= 1
                }
            }
        }
    }
    return res
}
