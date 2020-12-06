module ProblemFive (answer) where

answer :: IO ()
answer = print $ foldl lcm 2 [2 .. 21]