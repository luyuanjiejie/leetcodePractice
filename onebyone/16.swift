
class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        // 1. 健壮性判断：保证至少有三个数可以取
        guard nums.count >= 3 else {
            return nums.reduce(0, +)
        }
        
        // 2. 排序：建立单调性，是双指针能正确判断方向的基础
        var nums = nums
        nums.sort()
        
        // 3. 初始化全局最优解
        var closestSum = nums[0] + nums[1] + nums[2]
        var minGap = abs(closestSum - target)
        
        // 4. 第一层循环：固定第一个数 nums[i]
        for i in 0..<nums.count - 2 {
            
            // 去重逻辑：当前元素如果和上一个相同，会产生完全相同的解空间，直接跳过
            if i > 0, nums[i] == nums[i-1] {
                continue
            }
            
            // 5. 剩余区间使用双指针进行 O(N) 的线性扫描
            var j = i + 1              // 左边界：剩余区间最小的数
            var k = nums.count - 1     // 右边界：剩余区间最大的数
            
            while j < k {
                let currentSum = nums[i] + nums[j] + nums[k]
                let currentGap = abs(currentSum - target)
                
                // 只要发现距离更小的组合，就更新全局记录
                if currentGap < minGap {
                    minGap = currentGap
                    closestSum = currentSum
                }
                
                // 基于单调性淘汰不可能的边界值
                if currentSum > target {
                    // 和太大，淘汰当前区间最大的数
                    k -= 1
                } else if currentSum < target {
                    // 和太小，淘汰当前区间最小的数
                    j += 1
                } else {
                    // 差距为 0，绝对的最优解，直接终止所有循环交卷
                    return currentSum
                }
            }
        }
        
        return closestSum
    }
}

