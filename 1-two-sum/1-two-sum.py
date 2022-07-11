class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        n = 0
        while (target - nums[n] not in nums[n+1:]):
            n += 1
        res = target - nums[n]
        nums.remove(nums[n])
        return([n,nums.index(res)+1])