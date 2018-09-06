module Main where

  main :: IO ()
  main = do
    putStrLn "> let v1 = Vector2 1 2"
    let v1 = Vector2 1 2
    print $ v1
    putStrLn ""
    putStrLn "> let v2 = Vector2 4 6"
    let v2 = Vector2 4 6
    print $ v2
    putStrLn ""
    putStrLn "> add v1 v2"
    print $ add v1 v2
    putStrLn ""
    putStrLn "> len v1 v2"
    print $ len v1 v2
    putStrLn ""


  data Vector2 = Vector2 Double Double deriving (Show)

  add (Vector2 x1 y1) (Vector2 x2 y2) =
    Vector2 (x1 + x2) (y1 + y2)

  len (Vector2 x1 y1) (Vector2 x2 y2) =
    sqrt (((x1 - x2) ^ 2) + ((y1 - y2) ^ 2))
