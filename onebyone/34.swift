class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        let leftIdx = binarySearchLeft(nums,target)
        let rightIdx = binarySearchRight(nums,target)
        if(leftIdx<=rightIdx&&rightIdx<nums.count&&nums[leftIdx]==target&&nums[rightIdx]==target) {
            return [leftIdx,rightIdx];
        }
        return [-1, -1]
    }

    func binarySearchLeft(_ nums: [Int], _ target: Int) -> Int {
        var left = -1
        var right = nums.count
        while left+1 != right {
            let mid = left + (right - left) / 2
             if nums[mid] >= target {
                right = mid
            } else if nums[mid] < target {
                left = mid
            }
        }
        return right
    }

    func binarySearchRight(_ nums: [Int], _ target: Int) -> Int {
        var left = -1
        var right = nums.count
        while left+1 != right {
            let mid = left + (right - left) / 2
            if nums[mid] > target {
                right = mid
            } else {
                left = mid
            }
        }
        return left
    }
}

作者：随心源
链接：https://leetcode.cn/problems/find-first-and-last-position-of-element-in-sorted-array/solutions/967331/lan-hong-hua-fen-fa-dan-mo-ban-miao-sha-e7r40/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
