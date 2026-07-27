class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var chars = String(x)
        var arr = Array(chars)
        var i = 0;
        while(i < arr.count / 2) {
            if( arr[i] != arr[arr.count - 1 - i]) {
                return false
            }
            i += 1;
        }
        return true
    }
}