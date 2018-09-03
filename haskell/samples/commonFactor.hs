module Main where

  main :: IO ()
  main = do
    putStrLn "> last $ commonDivisor 18 24"
    print $ last $ commonDivisor 18 24
    putStrLn ""
    putStrLn "> head $ commonMultiple 12 18"
    print $ head $ commonMultiple 12 18
    putStrLn ""

  commonDivisor a b =
    [
      x |
      x <- [1 .. min a b],
      mod a x == 0,
      mod b x == 0
    ]

  commonMultiple a b =
    [
      x |
      x <- [max a b ..],
      mod x a == 0,
      mod x b == 0
    ]
