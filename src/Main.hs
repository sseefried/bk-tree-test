module Main where

import Data.BKTree
import Text.EditDistance
import Text.Printf

defaultCosts :: EditCosts
defaultCosts = EditCosts one one one one
  where one = ConstantCost 1

dist :: String -> String -> Int
dist =  levenshteinDistance defaultCosts

emptyTree = empty dist

main :: IO ()
main = do
  let s1 = "sean"
      s2 = "sux"
  printf "Distance: %s %s = %d\n" s1 s2 (dist s1 s2)
  return ()