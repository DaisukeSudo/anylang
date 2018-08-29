module Main where

  add x y = x + y

  main = do
    putStrLn "> add 2 3"
    print $ add 2 3
    putStrLn "> 2 `add` 3"
    print $ 2 `add` 3
