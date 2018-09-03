module Main where

  main :: IO ()
  main = do
    putStrLn "> quick [7, 37, 11, 41, 19, 23, 5, 13, 43, 31, 2, 47, 29, 3, 17]"
    print $ quick [7, 37, 11, 41, 19, 23, 5, 13, 43, 31, 2, 47, 29, 3, 17]


  quick [] = []
  quick (pivot:rest) =
    quick (smaller) ++ [pivot] ++ quick (larger)
    where
      (smaller, larger) = partition (pivot, rest, [], [])
      partition (_, [], smaller, larger) = (smaller, larger)
      partition (pivot, (h:t), smaller, larger) =
        if h <= pivot
          then partition(pivot, t, smaller ++ [h], larger)
          else partition(pivot, t, smaller, larger ++ [h])
