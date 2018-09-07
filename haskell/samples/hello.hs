module Main where

  main :: IO ()
  main = p "HELLO"
    where 
      p [] = return ()
      p (h:t) = do
        putStrLn [h]
        p t
