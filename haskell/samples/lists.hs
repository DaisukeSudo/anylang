module Main where

  main :: IO ()
  main = do
    putStrLn "> size (take 20 [1, 1..])"
    print $ size (take 20 [1, 1..])
    putStrLn ""
    putStrLn "> prod (take 5 [1..])"
    print $ prod (take 5 [1..])
    putStrLn ""
    putStrLn "> rev (take 10 [1..])"
    print $ rev (take 10 [1..])


  size arr = sizeR arr 0
    where
      sizeR [] a = a
      sizeR (h:t) a = sizeR t a + 1

  prod arr = prodR arr 1
    where
      prodR [] a = a
      prodR (h:t) a = prodR t a * h

  rev arr = revR arr []
    where
      revR [] a = a
      revR (h:t) a = revR t a ++ [h]
