module Main where

  main :: IO ()
  main = do
    putStrLn "> leaf"
    print $ leaf
    putStrLn ""
    putStrLn "> (Leaf l) = leaf"
    print $ l
    putStrLn ""
    putStrLn "> tree"
    print $ tree
    putStrLn ""
    putStrLn "> (Children c) = tree"
    print $ c
    putStrLn ""
    putStrLn "> (h:s) = c"
    print $ h
    putStrLn ""
    putStrLn "> depth tree"
    print $ depth tree
    putStrLn ""
    where
      leaf = Leaf 'a'
      (Leaf l) = leaf
      tree = Children [Leaf 1, Children [Leaf 2, Leaf 3]]
      (Children c) = tree
      (h:s) = c


  data Tree a = Children [Tree a] | Leaf a deriving (Show)

  depth (Leaf _) = 1
  depth (Children c) = 1 + maximum (map depth c)
