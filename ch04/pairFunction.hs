module PairFunction where


strTuple1 = ("one", "two")
strTuple2 = ("three", "four")
numTuple1 = (1, 2)
numTuple2 = (3, 4)
charTuple1 = ('a', 'b')
charTuple2 = ('c', 'd')

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = grandTuple
    where grandTuple = (first, second)
          first = (snd x, snd y)  
          second = (fst x, fst y)