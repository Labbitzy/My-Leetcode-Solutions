class Solution:
    def minProductSum(self, nums1: List[int], nums2: List[int]) -> int:
        nums1.sort()
        nums2.sort(reverse = True)
        return(sum(n*m for n, m in zip(nums1,nums2)))