module Main where

main :: IO ()
main =
  putStr $
  j
    "\n"
    [ j "" (replicate 3 $ s ++ ", doo doo doo doo doo doo\n") ++ s ++ "!"
    | s <-
        [ "Baby shark"
        , "Mommy shark"
        , "Daddy shark"
        , "Grandma shark"
        , "Grandpa shark"
        , "Let's go hunt"
        , "Run away"
        , "Safe at last"
        , "It's the end"
        ]
    ]

j :: [a] -> [[a]] -> [a]
j _ [i] = i
j d (i:ix) = i ++ d ++ j d ix
