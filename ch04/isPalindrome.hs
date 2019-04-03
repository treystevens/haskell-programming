module IsPalindrome where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = if (reverse x == x) then True else False