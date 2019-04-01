module Reverse where 
    
rvrs :: String -> String
rvrs x = concat[a, " ", b, " ", c, "."]
    where a = drop 9 x
          b = take 2 (drop 6 x)
          c = take 5 x

main :: IO ()
main = print (rvrs "Curry is awesome")

-- alt with $:
-- main = print $ rvrs "Curry is awesome" 