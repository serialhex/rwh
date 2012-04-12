
nums = [1,2,3]
str  = "foo"

-- Write a function that computes the number of elements in a list. To test it, ensure that it gives the same answers as the standard length function.
numElms :: [a] -> Int
numElms a =   count 0 a
        where count n []      = n
              count n (_:xs)  = count (n+1) xs

--Write a function that computes the mean of a list, i.e. the sum of all elements in the list divided by its length. (You may need to use the fromIntegral function to convert the length of the list from an integer into a floating point number.)
mean :: Fractional a => [a] -> a
mean l = (sum l) / (fromIntegral (numElms l))

--Turn a list into a palindrome, i.e. it should read the same both backwards and forwards. For example, given the list [1,2,3], your function should return [1,2,3,3,2,1].
palindrome:: [a] -> [a]
palindrome x = x ++ reverse x

--Write a function that determines whether its input list is a palindrome.
isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == (reverse x)

--Define a function that joins a list of lists together using a separator value. The separator should appear between elements of the list, but should not follow the last element.
intersperse :: a -> [[a]] -> [a]
intersperse s lol = ins s lol []
          where ins s (x:xs) [] = ins s xs x
                ins s (x:xs) l  = ins s xs (l ++ [s] ++ x)
                ins s []     l  = l