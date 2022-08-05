class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        strs = list(set(strs))
        if len(strs) == 1:
            return(strs[0])
        maxLen = 1
        maxstring = max([len(s) for s in strs])
        while maxLen <= maxstring:
            prefix = strs[0][:maxLen]
            for i in strs:
                if i[:maxLen] != prefix:
                    return(strs[0][:maxLen-1])
            maxLen += 1