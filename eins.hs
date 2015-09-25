module Eins where

import Data.List

-- 1.a

null' x
  | x == [] = True
  | otherwise = False

--pembatas

take' _ [] = []
take' 0 (x:xs) = (x:xs)
take' y (x:xs) = x : take' (y-1) xs

--pembatas

drop' _ [] = []
drop' 0 (x:xs) = (x:xs)
drop' y (x:xs) = drop' (y-1) xs

--pembatas

fst' (a,b) = a

--pembatas

snd' (a,b) = b

--pembatas

map' f [] = []
map' f (x:xs) = f x : map' f xs

--pembatas

filter' x = x

--pembatas

delete' _ [] = []
delete' 0 (x:xs) = (x:xs)
delete' y (x:xs)
  | y == x = xs
  | otherwise = x : delete' y xs

--pembatas

deleteAll' x = x

--pembatas

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

--pembatas

zipWith' x = x

--pembatas

nth'(x:xs) 0 = x
nth'(x:xs) y = nth' xs (y-1)

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

elem' _ [] = False
elem' y (x:xs)
    | y == x = True
    | y /= x = elem' y xs
    | otherwise = False

--pembatas

notElem' _ [] = True
notElem' y (x:xs)
  | y == x = False
  | y /= x = notElem' y xs
  | otherwise = True

--pembatas
head' (x:xs) = x

--pembatas

length' [] = 0
length' (x:xs) = x + (length xs)

--pembatas

reverse' [] = []
reverse' (x:xs) = (reverse' xs) ++ [x]

--pembatas

last' [x] = x
last' (x:xs) = last' xs

--pembatas

tail' [x] = []
tail' (x:xs) = xs

--pembatas

max' x y
  | x > y = x
  | otherwise = y

--pembatas

min' x y
  | x < y = x
  | otherwise = y

--pembatas

concat' [] = []
concat' [(x:xs)] = (x:xs)

--pembatas
intersperse' _ [] = []
intersperse' y (x:xs) = [x] : [y] : intersperse' y xs

--pembatas
intercalate' [] [(x:xs)] = (x:xs)
intercalate' (y:ys) [(x:xs)] = (x:xs)

--pembatas

and' [] = True
and' (x:xs)
  | x == False = False
  | otherwise = and' xs

--pembatas

or' [] = False
or' (x:xs)
  | x == True = True
  | otherwise = or' xs

--pembatas

zip3' [] _ _ = []
zip3' _ [] _ = []
zip3' _ _ [] = []
zip3' (x:xs) (y:ys) (z:zs) = (x,y,z) : zip3' xs ys zs

--pembatas

sum' [] = 0
sum' (x:xs) = x + sum' xs

--pembatas

product' [] = 1
product' (x:xs) = x * (product xs)

--pembatas

words' x = x

--pembatas

lines' x = x

--pembatas

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' f [] = True
all' f (x:xs)
  | f x == False = False
  | otherwise = all' f (xs)

--pembatas

any' f [] = False
any' f (x:xs)
  | f x == True = True
  | otherwise = any' f xs

--pembatas

insert' y [] = [y]
insert' y (x:xs)
  | y <= x = y : (x:xs)
  | otherwise = x : insert' y xs

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

nub' x = x

--pembatas

sort' x = x

--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

init' [x] = []
init' (x:xs) = x : init' (xs)

--pembatas

tails' [] = [[]]
tails' (x:xs) = (x:xs) : tails' xs

--pembatas

union' x = x

--pembatas

intersect' x = x

--pembatas

group' x = x

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' 0 _ = []
replicate' x y = y : replicate' (x-1) y

--pembatas
