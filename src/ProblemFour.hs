module ProblemFour (answer) where

isPalindrome :: Int -> Bool
isPalindrome v = show v == reverse (show v)

answer :: IO ()
answer = print $ maximum [a * b | a <- [100 .. 999], b <- [100 .. a], isPalindrome (a * b)]
