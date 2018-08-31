module Main where

  main :: IO ()
  main = do
    putStrLn "> mTable [1..9] [1..9]"
    print $ mTable [1..9] [1..9]

  mTable arr1 arr2 = 
    [(a, b, a * b) | a <- arr1, b <- arr2]
