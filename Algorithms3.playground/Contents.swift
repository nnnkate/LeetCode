class Solution {
    static func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count == 0 {
            return 0
        }
        
        var index = 0
        var length = 0
        var set = Set<Character>()
        
        s.enumerated().forEach {
            print(set)
            if set.contains($1) {
                for i in index...$0 {
                    let char = s[String.Index(utf16Offset: i, in: s)]
                    set.remove(char)
                    if $1 == char {
                        break
                    }
                }
                index = $0
            }
            set.insert($1)
            length = max(length, set.count)
        }
        
        return length
    }
}

let test1 = "abcabcbb"
let test2 = "bbbbbbbbbb"
let test3 = "pwwkew"
let test4 = " "
let test5 = "dvdf"
let test6 = "aab"
let test7 = "qrsvbspk"
let test8 = "aabaab!bb"

Solution.lengthOfLongestSubstring(test1)
Solution.lengthOfLongestSubstring(test2)
Solution.lengthOfLongestSubstring(test3)
Solution.lengthOfLongestSubstring(test4)
Solution.lengthOfLongestSubstring(test5)
Solution.lengthOfLongestSubstring(test6)
Solution.lengthOfLongestSubstring(test7)
Solution.lengthOfLongestSubstring(test8)
