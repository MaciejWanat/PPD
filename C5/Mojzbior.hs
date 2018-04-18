module Mojzbior (suma, roznica, iloczyn, podzbior, unique) where

unique [] = []
unique (x:xs) = x : unique(filter (x /=) xs)

roznica x y = filter (\x -> not (x `elem` y)) x

iloczyn [] _ = []
iloczyn (x:xs) ys
   | x elem ys = x:iloczyn xs ys
   | otherwise = iloczyn xs ys

suma x y = unique (x ++ y)

podzbior x y = length(y) == length(filter (\x -> x `elem` y) x)