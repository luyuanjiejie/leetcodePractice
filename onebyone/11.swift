
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var res = 0
        var left = 0, right = height.count - 1
        while left < right {
            res = max(res, (right - left) * min(height[left], height[right]))
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return res
    }
}
