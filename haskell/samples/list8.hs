module Main where

  main :: IO ()
  main = do
    putStrLn "> take 10 $ list2 1"
    print $ take 10 $ list2 1
    putStrLn ""
    putStrLn "> take 10 $ list4 2"
    print $ take 10 $ list4 2
    putStrLn ""
    putStrLn "> take 10 $ list8 1 2"
    print $ take 10 $ list8 1 2
    putStrLn ""


  list2 x = [x, x + 2 ..]
  list4 y = [y, y + 4 ..]
  list8 x y = [x + y, x + y + 8 ..]
