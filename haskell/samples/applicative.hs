module Main where

  main :: IO ()
  main = do
    putStrLn "> print =<< (+ 1) <$> return 1"
    print =<< (+ 1) <$> return 1
    putStrLn ""
    putStrLn "> print =<< (+) <$> return 2 <*> return 3"
    print =<< (+) <$> return 2 <*> return 3
    putStrLn ""
