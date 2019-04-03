module ReadingSyntax where

-- 1.
x = (+)
f xs = x w 1
    where w = length xs

-- 2.
idF = (\x -> x) 2
idF2 = (\x -> x) 2

-- 3.
head1 = (\(x:xs) -> x) [1,2,3]
head2 = (\(x:xs) -> x) [-837,83,2]

-- 4.
f4 a = fst a (1, 2)