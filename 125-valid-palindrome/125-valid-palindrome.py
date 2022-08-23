class Solution:
    def isPalindrome(self, s: str) -> bool:
        s = s.replace(' ', '')
        s = s.lower()
        for i in s:
            if i.isalnum():
                pass
            else:
                s = s.replace(i, '')
        return(s == s[::-1])