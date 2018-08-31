module Main where

  main :: IO ()
  main = do
    putStrLn "> let basket = [\"apple\", \"orange\", \"banana\"]"
    putStrLn ""
    putStrLn "> [(a, b) | a <- basket, b <- basket]"
    print $ [(a, b) | a <- basket, b <- basket]
    putStrLn ""
    putStrLn "> [(a, b) | a <- basket, b <- basket, a /= b]"
    print $ [(a, b) | a <- basket, b <- basket, a /= b]
    putStrLn ""
    putStrLn "> [(a, b) | a <- basket, b <- basket, a < b]"
    print $ [(a, b) | a <- basket, b <- basket, a < b]
    where
      basket = ["apple", "orange", "banana"]
