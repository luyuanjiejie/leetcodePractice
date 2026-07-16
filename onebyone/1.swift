
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (i, e) in nums.enumerated() {
            if let v = map[target - e] {
                return [v, i]
            } else {
                map[e] = i
            }
        }
        return []
    }
}

let me =  Solution();
let res = me.twoSum([1,2,3,4], 6)
print (res)
