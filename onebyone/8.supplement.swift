
class Solution {
    func myAtoi(_ s: String) -> Int {
        if(s.trimmingCharacters(in:.whitespaces) == "") {
            return 0;
        }
        var res  = 0;
        var minus = 1;
        var charArr = Array(s.trimmingCharacters(in: .whitespaces))
        // 如果这个字符是 ascii码为32的空格去掉它
        if(charArr[0] == Character(UnicodeScalar(32))) {
            charArr.removeFirst();
            // 排除全是空格的情况才能递归
            if s.allSatisfy({ $0 == " " }) {
                return 0
            }
            if s.count == 0 {
                print(s.count, "count")
                return 0
            }
            // return myAtoi(String(charArr))
        }
        if charArr[0] == "-" {
            minus = -1;
            charArr.removeFirst()
        } else if(charArr[0] == "+") {
            charArr.removeFirst()
        }
        if(String(charArr) == "") {
            return 0
        }
        while(charArr[0] == "0" && (charArr.count > 1)) {
            charArr.removeFirst()
        }
        var temp = 0;
        for c in String(charArr) {
            print (c, "c")
            if res > 2147483647 {
                break
            }
            if res < -2147483648 {
                break
            }
            if c.isNumber {
                guard let digit = c.wholeNumberValue else {
                    break
                }
                print (digit, "digit", res, "res")
                res = res * 10 + digit
                print (res, "res")
            }
            else {
                break;
            }
        }

        print(minus, "minus")

        res = res * minus;
        if res > 2147483647 {
            return 2147483647
        } else if res < -2147483648 {
            return -2147483648
        } else {
            return res;
        }
    }
}