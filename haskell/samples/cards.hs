module Main where

  main :: IO ()
  main = do
    putStrLn "> cardValue (Queen, Hearts)"
    print $ cardValue (Queen, Hearts)
    putStrLn ""
    putStrLn "> hands"
    print $ hands
    putStrLn ""
    putStrLn "> backwords hands"
    print $ backwords hands
    putStrLn ""
    where
      hands =
        [
          (Queen, Hearts),
          (King, Hearts),
          (Ten, Spades),
          (Jack, Spades),
          (Ace, Spades)
        ]


  data Suit = Spades | Hearts deriving (Show)
  data Rank = Ten | Jack | Queen | King | Ace deriving (Show)
  type Card = (Rank, Suit)
  type Hand = [Card]

  value :: Rank -> Integer
  value Ten   = 10
  value Jack  = 11
  value Queen = 12
  value King  = 13
  value Ace   = 14

  cardValue :: Card -> Integer
  cardValue (rank, suit) = value rank

  backwords :: [a] -> [a]
  backwords [] = []
  backwords (h:t) = backwords t ++ [h]
