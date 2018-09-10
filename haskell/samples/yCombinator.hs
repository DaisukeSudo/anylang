module Main where

  main :: IO ()
  main = do
    putStrLn "y sum' [1..100]"
    print $ y sum' [1..100] 

  y = \f -> f (y f)

  sum' _ [] = 0
  sum' f (h:ts) = h + f ts
