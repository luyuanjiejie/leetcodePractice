
func isValid(_ s: String) -> Bool {
    var stack = [String.Element]()
    for ch in s {
        if ch == "(" {
            stack.append(")")
        } else if ch == "{" {
            stack.append("}")
        } else if ch == "[" {
            stack.append("]")
        } else {
            let top = stack.last
            if ch == top {
                stack.removeLast()
            } else {
                return false
            }
        }
    }
    return stack.isEmpty
}

