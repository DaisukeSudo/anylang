module Main where

  main :: IO ()
  main = do
    putStrLn "> mapColoring !! 0"
    print $ mapColoring !! 0

  mapColoring =
    [
      [
        ("Alabama"    , alabama     ),
        ("Mississippi", mississippi ),
        ("Georgia"    , georgia     ),
        ("Tennessee"  , tennessee   ),
        ("Florida"    , florida     )
      ]
      |
      alabama     <- colors,
      mississippi <- colors,
      georgia     <- colors,
      tennessee   <- colors,
      florida     <- colors,
      mississippi /= tennessee,
      mississippi /= alabama,
      alabama     /= tennessee,
      alabama     /= georgia,
      alabama     /= florida,
      georgia     /= florida,
      georgia     /= tennessee
    ]
    where
      colors = ["red", "green", "blue"]
