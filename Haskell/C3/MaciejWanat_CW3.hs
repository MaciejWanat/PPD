-- Zadanie 1.
powerlist [] = [[]]
powerlist (x:xs) = [x:px | px <- powerlist(xs)] ++ powerlist(xs)
 
-- Zadanie 2.
iloczyn_z [] _ = []
iloczyn_z (x:xs) ys
   | x elem ys = x:iloczyn_z xs ys
   | otherwise = iloczyn_z xs ys
 
-- Zadanie 3.
unique [] = []
unique (x:xs) = x : unique(filter (x /=) xs)
 
suma_z x y = unique (x ++ y)
-- suma wartości elementów  
-- suma_z x y = foldr (+) 0 [foldr (+) 0 x, foldr (+) 0 y]
 
-- Zadanie 4.
{- Opisy w komentarzach.
a)
foldr (/) 2 [6,12,24,8]
6 / foldr (/) 2 [12,24,8]
6 / (12 / foldr (/) 2 [24,8])
6 / (12 / (24 / foldr (/) 2 [8])
6 / (12 / (24 / (8 / foldr (/) 2 []))
6 / (12 / (24 / (8 / 2))))
6 / (12 / (24 / 4))
6 / (12 / 6)
6 / 2
3
 
b)
foldr (&&) True [1>2,3>2,5==5]
1>2 && (foldr (&&) True [3>2,5==5])
1>2 && (3>2 && (foldr (&&) True [5==5]))
1>2 && (3>2 && (5==5 && (foldr (&&) True [])))
1>2 && (3>2 && (5==5 && True))
1>2 && (3>2 && True)
1>2 && True
False
 
c)
foldr max 18 [3,6,12,4,55,11]
3 max (foldr max 18 [6,12,4,55,11])
3 max (6 max (foldr max 18 [12,4,55,11]))
3 max (6 max (12 max (foldr max 18 [4,55,11])))
3 max (6 max (12 max (4 max (foldr max 18 [55,11]))))
3 max (6 max (12 max (4 max (55 max (foldr max 18 [11])))))
3 max (6 max (12 max (4 max (55 max (11 max (foldr max 18 []))))))
3 max (6 max (12 max (4 max (55 max (11 max 18)))))
...
55
 
d)
foldr max 81 [3,6,12,4,55,11]
3 max (foldr max 81 [6,12,4,55,11])
3 max (6 max (foldr max 81 [12,4,55,11]))
3 max (6 max (12 max (foldr max 81 [4,55,11])))
3 max (6 max (12 max (4 max (foldr max 81 [55,11]))))
3 max (6 max (12 max (4 max (55 max (foldr max 81 [11])))))
3 max (6 max (12 max (4 max (55 max (11 max (foldr max 81 []))))))
3 max (6 max (12 max (4 max (55 max (11 max 81)))))
...
81
 
e)
foldr (\x y -> (x+y)/2) 54 [24,4,10,6]
(24 + foldr (\x y -> (x+y)/2) 54 [4,10,6])/2
(24 + (4 + foldr (\x y -> (x+y)/2) 54 [10,6])/2)/2
(24 + (4 + (10 + foldr (\x y -> (x+y)/2) 54 [6])/2)/2)/2
(24 + (4 + (10 + (6 + foldr (\x y -> (x+y)/2) 54 [])/2)/2)/2)/2
(24 + (4 + (10 + (6 + 54)/2)/2)/2)/2
...
18
 
f)
foldl (\x y -> (x+y)/2) 54 [2,4,10,6]
foldl (\x y -> (x+y)/2) (54+2)/2 [4,10,6]
foldl (\x y -> (x+y)/2) ((54+2)/2 + 4)/2 [10,6]
foldl (\x y -> (x+y)/2) (((54+2)/2 + 4)/2 + 10)/2 [6]
foldl (\x y -> (x+y)/2) ((((54+2)/2 + 4)/2 + 10)/2 + 6)/2 []
((((((54+2)/2 + 4)/2) + 10)/2) + 6)/2
...
9,5
 
g)
foldl (/) 64 [4,2,4]
foldl (/) (64 / 4) [2,4]
foldl (/) ((64 / 4) / 2) [4]
(((64 / 4) / 2) / 4)
...
2
 
h) foldl (\x y ->2*x + y) 8 [1,2,3]
foldl (\x y ->2*x + y) 8*2 + 1 [2,3]
foldl (\x y ->2*x + y) (8*2 + 1)*2 + 2 [2,3]
foldl (\x y ->2*x + y) ((8*2 + 1)*2 + 2)*2 + 3 []
((8*2 + 1)*2 + 2)*2 + 3
...
75
 
-}
 
-- Zadanie 5.
nalezy el (z:zs) = not (foldl (\x y -> x && y /= el ) (z /= el) zs)
 
-- Zadanie 6.
map_foldl f xs = foldl (\z y -> z ++ [(f y)]) [] xs

-- Zadanie 7.
-- a) last
last_fold xs = foldl1 (\x y -> y) xs
-- b) head
head_fold xs = foldl1 (\x y -> x) xs
-- c) max
max_fold xs = foldr1 (\x y -> if(x>y) then x else y) xs

-- Zadanie 8
my_zip [] _ = []
my_zip _ [] = []
my_zip (x:xs) (y:ys) = (x,y):my_zip xs ys

my_unzip [] = ([],[])
my_unzip ((a,b):xs) = (a : fst el, b : snd el)
    where el = my_unzip xs

-- Zadanie 9
f_add_one list = map (\x -> x+1) list
-- f_add_one [1,2,3] = [2,3,4]

f_mod_n list n = map (\x -> x `mod` n) list
-- f_mod_n [1,2,3] 2 = [1,0,1]

f_abs list = map (\x -> abs x) list
-- f_abs [1,-2,3] = [1,2,3]

f_divide_list list n = map (\x -> x / n) list 
-- f_divide_list [1,2,3] 2 = [0.5, 1.0, 1.5]

f_mark_number list n = map (\x -> if (x==n) then 1 else 0) list
-- f_mark_number [2,2,3,1,1,2,3,4,2] 2 = [1,1,0,0,0,1,0,0,1]

f_bigger_than list n = filter (>0) (map (\x -> if (x>n) then x else 0) list)
-- f_bigger_than [1,2,3] 1 = [2,3]