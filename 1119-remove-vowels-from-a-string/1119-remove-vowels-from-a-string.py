class Solution:
    def removeVowels(self, s: str) -> str:
        vowels = 'aeiou'
        for v in vowels:
            s = s.replace(v, '')
        return(s)