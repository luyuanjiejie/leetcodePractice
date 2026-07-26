class Solution {
    enum TOIState {
        case start, num, end
    }

    func myAtoi(_ s: String) -> Int {
        var characters: [Character] = []
        var state = TOIState.start
        var isNegative = false
        for c in s {
            if c.isWhitespace && state == .start {
                continue
            } else if c == "-" && state == .start {
                state = .num
                isNegative = true
            } else if c == "+" && state == .start {
                state = .num
                isNegative = false
            } else if c.isNumber {
                if state == .num {
                    characters.append(c)
                } else if state == .start {
                    state = .num
                    isNegative = false
                    characters.append(c)
                } else {
                    state = .end
                    break
                }
            } else {
                state = .end
                break
            }
        }
        guard characters.count > 0 else { return 0 }
        var num = Int(String(characters)) ?? Int.max
        if isNegative {
            num = -num
            if num < Int32.min {
                return Int(Int32.min)
            }
        }
        if num > Int32.max {
            return Int(Int32.max)
        }
        return num
    }
}