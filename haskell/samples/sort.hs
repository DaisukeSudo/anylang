module Main where

  main :: IO ()
  main = do
    putStrLn "> quick (\\x y -> x - y) [7, 37, 11, 41, 19, 23, 5, 13, 43, 31, 2, 47, 29, 3, 17]"
    print $ quick (\x y -> x - y) [7, 37, 11, 41, 19, 23, 5, 13, 43, 31, 2, 47, 29, 3, 17]


  quick fn [] = []
  quick fn (pivot:rest) =
    quick fn smaller ++ [pivot] ++ quick fn larger
    where
      (smaller, larger) = partition (pivot, rest, [], [])
      partition (_, [], smaller, larger) = (smaller, larger)
      partition (pivot, (h:t), smaller, larger) =
        if (fn h pivot) <= 0
          then partition(pivot, t, smaller ++ [h], larger)
          else partition(pivot, t, smaller, larger ++ [h])
