module Main where

  fib :: Integer -> Integer

  main :: IO ()
  main = do
    putStrLn "> map fib [0..19]"
    print $ map fib [0..19]

  -- * case 1 : if
  -- fib x = if x < 2 then 1 else fib (x - 1) + fib (x - 2)

  -- * case 2 : pattern match
  -- fib 0 = 1
  -- fib 1 = 1
  -- fib x = fib (x - 1) + fib (x - 2)

  -- * case 3 : guard
  -- fib x
  --   | x > 1 = fib (x - 1) + fib (x - 2)
  --   | otherwise = 1

  -- * case 4 : accumulator
  fib x = fibR (0, 1, x)
    where
      fibR (x, y, index)
        | index == 0 = y
        | index > 0 = fibR (y, x + y, index - 1)
