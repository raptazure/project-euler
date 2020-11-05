module ProblemThree (answer) where

import qualified Data.Map.Strict as M

primeFactors :: Integer -> M.Map Integer Integer
primeFactors value =
  let (v', n) = factorOut 2 value
   in M.fromList $ (2, n) -?: factorUntil1 3 v'
  where
    (-?:) :: (Num a, Eq a) => (b, a) -> [(b, a)] -> [(b, a)]
    (_, 0) -?: rest = rest
    (a, b) -?: rest = (a, b) : rest

    factorUntil1 _ 1 = []
    factorUntil1 oddFactor v =
      let (v', n) = factorOut oddFactor v
       in (oddFactor, n) -?: factorUntil1 (oddFactor + 2) v'

    factorOut divisor v
      | v `mod` divisor == 0 =
        let (v', n) = factorOut divisor (v `div` divisor)
         in (v', n + 1)
    factorOut _ v = (v, 0)

puzzle :: Integer
puzzle = 600851475143

answer :: IO ()
answer = case M.lookupMax $ primeFactors puzzle of
  Just (factor, _) -> print factor
  Nothing -> print "didn't find a factor"