class Solution:
    def isPalindrome(self, x: int) -> bool:
        result = True
        x_lst = list(str(x))
        i = 0
        j = len(x_lst)-1
        while i < j:
            if x_lst[i] == x_lst[j]:
                i += 1
                j -= 1
            else:
                result = False
                break
        return(result)
        