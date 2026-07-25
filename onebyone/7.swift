class Solution {
    func reverse(_ x: Int) -> Int {
        let CUSTOM =  2147483648
        var temp = x;
        temp = abs(temp)
        var res = 0;
        while(temp > 0 ) {
            var tail = temp % 10
            res = res * 10 + tail
            temp /= 10;

        }
        res *= x < 0 ? -1 : 1;
        return -1*custom < res && custom - 1 > res ? res : 0
    }
}