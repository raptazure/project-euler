module Main where

import ProblemOne as One (answer)
import ProblemThree as Three (answer)
import ProblemTwo as Two (answer)

main :: IO ()
main = do
  One.answer
  Two.answer
  Three.answer
