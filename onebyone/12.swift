class Solution {
    // 方法一
    // 倒叙，1283 先算3，之后算8，再2和1，把结果拼接。
    // 两个数组，一个是十进制，一个是5进制，为了算4，5，9的罗马数字
    // 第一次算个位数，第二次算十位数……，之后将结果相加。

    func intToRoman(_ num: Int) -> String {
        if (num == 0) {
            return ""
        }
        var num = num
        var result = ""
        var arr = ["I", "X", "C", "M"]
        var arrFive = ["V","L","D"]
        while (num > 0) {
            var remainder = num % 10
            num = num / 10
            result = "\(convertSingleNumToRoman(remainder, arr[0], (arrFive.count > 0 ? arrFive[0] : ""), (arr.count > 1 ? arr[1] : arr[0])))\(result)"
            if arr.count > 0 {
                arr.removeFirst()
            }
            if arrFive.count > 0 {
                arrFive.removeFirst()
            }
        }
        
        return result
    }

    func convertSingleNumToRoman(_ num: Int, _ cur: String, _ five: String, _ next: String) -> String {
        var result = ""

        if (num <= 3) {
            print(num)
            for i in 0..<num {
                print(cur)
                result = "\(cur)\(result)"
            }
        } else if (num == 4) {
            result = "\(cur)\(five)"
        } else if (num == 5) {
            result = five
        } else if (num < 9) {
            result = five
            for i in 0..<num - 5 {
                result += cur
            }
        } else if (num == 9) {
            result = "\(cur)\(next)"
        }
        return result
    }

    // 方法二
    // 空间换时间，把主要的几个节点都写出来，省略了很多代码
    // 不用除以10的方法，直接用减法
    func  intToRoman(_ num: Int) -> String {
        let romanNumbers = [
            (1000, "M"),
            (900, "CM"),
            (500, "D"),
            (400, "CD"),
            (100, "C"),
            (90, "XC"),
            (50, "L"),
            (40, "XL"),
            (10, "X"),
            (9, "IX"),
            (5, "V"),
            (4, "IV"),
            (1, "I"),
        ]

        var num = num
        var index = 0
        var result = ""
        while num > 0 {
            if num >= romanNumbers[index].0 {
                result += romanNumbers[index].1
                num -= romanNumbers[index].0
            } else {
                index += 1
            }
        }
        return result

    }

}

