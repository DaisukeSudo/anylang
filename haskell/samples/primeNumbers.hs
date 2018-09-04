module Main where

  main :: IO ()
  main = do
    putStrLn "> primeNumbers 100"
    print $ primeNumbers 100

  primeNumbers :: Integer -> [Integer]
  primeNumbers 0 = []
  primeNumbers 1 = [2]
  primeNumbers x = primeR (x - 2) [2, 3]
    where
      primeR 0 a = a
      primeR x a = primeR (x - 1) (a ++ [next a])
      next a =
        head [
          n |
          n <- [last a + 2, last a + 4 ..],
          all (\m -> mod n m /= 0) a
        ]
