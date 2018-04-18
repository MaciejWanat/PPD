-- Zadanie 1.
--a)
add_start a xs = a:xs
--b)
add_second a (x:xs) = x:a:xs
--c)
add_last a xs = xs ++ [a]

-- Zadanie 2.
--a)
get_second (x:xs) = head xs
--b)
get_third (x:xs) = head (tail xs)
--c)
get_penultimate xs = last (init xs)

-- Zadanie 3.
my_reverse [] = []
my_reverse xs = last xs : my_reverse(init xs)

-- Zadanie 4.
switch_first_last (x:xs) = last xs : init xs ++ [x]

-- Zadanie 5.
--a)
pos_even_count xs = length ( filter (>0) (filter even xs) )
--b)
mod_3 x = x `mod` 3 == 0
f_div3_count x = length (filter mod_3 [1..x])
--c)
f_div3_sum x = sum (filter mod_3 [1..x])

-- Zadanie 6.
is_even_len xs = even (length xs)

-- Zadanie 7.
--a)
square x = x*x
sqrlist_map xs = map square xs

--b)
sqrlist_no_map xs = [x*x | x <- xs] 

-- Zadanie 8.
count_el (x,xs) = length(filter (\a -> a == x) xs)

-- Zadanie 9.
duplicate (x,0) = []
duplicate (x,n) = x : duplicate (x,n-1) 

-- Zadanie 10.
isPalin xs = xs == reverse xs

-- Zadanie 11.
delFirst a [] = []
delFirst a (x:xs) 
   | x == a = xs
   | otherwise = x : delFirst a xs

-- Zadanie 12.
delNth 0 (x:xs) = xs
delNth n (x:xs) = x : delNth (n-1) (xs) 

-- Zadanie 13.
areList [] ys = True
areList (x:xs) ys
   | elem x ys = areList xs ys
   | otherwise = False

-- Zadanie 14.
switch_in_pair (x,y) = (y,x)

switch_pairs [] = []
switch_pairs (x:xs) = switch_in_pair x : switch_pairs xs