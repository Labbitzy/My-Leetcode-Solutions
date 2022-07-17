class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        result = []
        for n in nums:
            if len(result) == 0:
                result.append(n)
            else:
                result.append(result[-1]+n)
        return(result)