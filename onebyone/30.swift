
class Solution {
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        let wordLength = words[0].count
        let totalLength = words.count * wordLength
        var resultArray:[Int] = []
        
        // 记录words每个单词出现的次数
        var map :[String: Int] = [:]
        for word in words {
            map[word, default: 0] += 1
        }
        
        for i in 0..<s.count - totalLength + 1 {
            var tempMap :[String: Int] = [:]
            // 从i开始截取一段长为totalLength的字符串
            let tmpStr = s[s.index(s.startIndex, offsetBy: i)..<s.index(s.startIndex, offsetBy: i + totalLength)]
            
            for j in stride(from: 0, to:totalLength, by: wordLength) {
                // 每wordLength个字符为一组分词
                let tempWord = tmpStr[tmpStr.index(tmpStr.startIndex, offsetBy:j)..<tmpStr.index(tmpStr.startIndex, offsetBy:j + wordLength)]
                tempMap[String(tempWord), default: 0] += 1
            }
            if tempMap == map {
                resultArray.append(i)
            }
            
        }
        return resultArray
}

作者：zzzzzzcy
链接：https://leetcode.cn/problems/substring-with-concatenation-of-all-words/solutions/1992605/swift-hua-dong-chuang-kou-by-zzzzzzcy-d3i2/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
