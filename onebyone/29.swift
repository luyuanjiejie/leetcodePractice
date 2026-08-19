
class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        if dividend == 0 {
            return 0
        }
        
        if divisor == 1 {
            return dividend
        }
        
        if divisor == -1 {
            // 如果被除数比最小值还小，除以-1之后，就会比边界值还打，所以此时返回最大边界值，其他情况，返回相反数
            if dividend > Int(Int32.min) {
                return -dividend
            }
            return Int(Int32.max)
        }
        // 结果是正数还是负数标志
        let sign = dividend > 0 && divisor > 0 || dividend < 0 && divisor < 0
        let a = dividend > 0 ? dividend : -dividend
        let b = divisor > 0 ? divisor : -divisor
        let res = div(a, b)
        
        return sign ? res : -res
    }

    func div(_ a: Int, _ b: Int) -> Int {
        if a < b {
            return 0
        }
        
        var count = 1
        var result = b
        while result + result <= a {
            count += count
            result += result
        }
        
        return count + div(a-result, b)
    }
}

作者：Jeremi
链接：https://leetcode.cn/problems/divide-two-integers/solutions/1230301/gryffindor-29-liang-shu-xiang-chu-by-jer-mrge/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
