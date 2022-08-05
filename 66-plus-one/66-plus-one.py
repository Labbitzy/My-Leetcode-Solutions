class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        s = ''
        for i in digits:
            s = s+str(i)
        num = int(s)
        num += 1
        res = [int(n) for n in list(str(num))]
        return(res)