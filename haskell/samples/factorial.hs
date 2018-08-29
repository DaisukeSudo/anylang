module Main where

  fact :: Integer -> Integer

  main :: IO ()
  main = do
    putStrLn "> fact 5"
    print $ fact 5

  -- * case 1 : if
  -- fact x = if x < 1 then 1 else fact (x - 1) * x

  -- * case 2 : pattern match
  -- fact 0 = 1
  -- fact x = x * fact (x - 1)

  -- * case 3 : guard
  -- fact x
  --   | x > 1 = x * fact (x - 1)
  --   | otherwise = 1

  -- * case 4 : accumulator
  fact x = factR x 1
    where
      factR x a
        | x > 0 = factR (x - 1) (x * a)
        | otherwise = a
