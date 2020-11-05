module ProblemTwo (answer) where

fibs :: [Integer]
fibs = aux 1 1
  where
    aux a b = a : aux b (a + b)

answer :: IO ()
answer = print $ sum $ filter even $ takeWhile (< 4000000) $ fibs
