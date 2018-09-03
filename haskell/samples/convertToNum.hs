module Main where

  main :: IO ()
  main = do
    putStrLn "> convertToNum \"$02,345,678.99\""
    print $ convertToNum "$02,345,678.99"

  convertToNum str =
    read (filter fn str) :: Double
    where
      fn = (\x -> elem x ('.':['0'..'9']))
