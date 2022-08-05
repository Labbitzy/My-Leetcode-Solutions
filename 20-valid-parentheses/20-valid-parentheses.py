class Solution:
    def isValid(self, s: str) -> bool:
        while len(s) > 0:
            if '()' in s:
                s = s.replace('()', '')
            elif '{}' in s:
                s = s.replace('{}', '')
            elif '[]' in s:
                s = s.replace('[]', '')
            else:
                return(False)
        return(True)   