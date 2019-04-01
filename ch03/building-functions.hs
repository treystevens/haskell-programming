module BuildingFunctions where
-- Exercises for "Building Functions".

-- Exercise 2.
str :: String
str = "Curry is awesome"

concatStr :: String -> String
concatStr x = x ++ "!"

getFourthIndexChar :: String -> Char
getFourthIndexChar x = x !! 4

dropLettersFromNine :: String -> String
dropLettersFromNine x = drop 9 x

---- Experimenting
dropLetters x amount = drop amount x
testPrefixStringFunctions action value = action value str


-- Exercise 3.
thirdLetter :: String -> Char
thirdLetter x = x !! 3


-- Exercise 4.
-- Utilizing the global variable "str".
letterIndexGlobal :: Int -> Char
letterIndexGlobal x = str !! x

-- Utilizing a locally defined variable "localStr".
letterIndexLocal :: Int -> Char
letterIndexLocal x = localStr !! x
    where localStr = "Local variable: Curry is awesome!"

---- Experimenting
-- Purpose: Seeing if "str" overrides global defined str.
letterIndexLocal2 :: Int -> Char
letterIndexLocal2 x = str !! x
    where str = "I'm the new local str"


-- Execise 5.

-- Uses ++ operator instead of concat function.
rvrs :: String -> String
rvrs x = a ++ b ++ c ++ "."
    where a = drop 9 x
          b = take 2 (drop 6 x)
          c = take 5 x

-- Using a previously defined function, dropLettersFromNine.
rvrs2 :: String -> String
rvrs2 x = concat[a, " ", b, " ", c, "."]
    where a = dropLettersFromNine x
          b = take 2 (drop 6 x)
          c = take 5 x

-- Using $ instead of ().
rvrs3 :: String -> String
rvrs3 x = concat[a, " ", b, " ", c, "."]
    where a = dropLettersFromNine x
          b = take 2 $ drop 6 x
          c = take 5 x