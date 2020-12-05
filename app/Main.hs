module Main where

import ProblemFour as Four (answer)
import ProblemOne as One (answer)
import ProblemThree as Three (answer)
import ProblemTwo as Two (answer)

main :: IO ()
main = do
  One.answer
  Two.answer
  Three.answer
  Four.answer
