import Data.Char

-- Zadanie 2
nThSeries 1 = 0
nThSeries 2 = 5
nThSeries n = nThSeries (n-1) + 2 * nThSeries (n-2)

-- tail recursion                                                                                                                                     
fib_gen n = fib_acc (n-1) 5 0                                                                                                                         
  where                                                                                                                                               
    fib_acc 0 x1 x2 = 0                                                                                                                               
    fib_acc 1 x1 x2 = x1                                                                                                                              
    fib_acc x x1 x2 = fib_acc (x-1) (x1+2*x2) x1

-- Zadanie 3
-- a
switchFirstSecond :: [a] -> [a]
switchFirstSecond (x:xs) = head(xs):x:tail(xs)

-- b
switchFirstLast :: [a] -> [a]
switchFirstLast (x:xs) = last(xs):init(xs) ++ [x]

-- c
switchSecondOneBeforeLast (x:xs) = x:last(init(xs)):tail(init(init(xs))) ++ [head(xs)] ++ [last(xs)]

-- Zadanie 4
occTimes list d = foldl1 (+) (map (\x -> 1) (filter (== d) list))

-- Zadanie 5
evenLists [] [] = True
evenLists l [] = False
evenLists [] l = False
evenLists (x:xs) (y:ys) = x == y && evenLists xs ys

-- Zadanie 6
seteq xs ys = evenLists (insertionSort xs) (insertionSort ys)

-- Zadanie 7
insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (y:ys)
       | x < y = x:y:ys 
       | otherwise = y:insert x ys

insertionSort :: [Int] -> [Int]
insertionSort [x] = [x]
insertionSort (x:xs) = insert x (insertionSort xs)

bubbleInsert :: Ord a =>  [a] -> [a]
bubbleInsert (x:y:xs) 
        | x > y = y:bubbleInsert (x:xs)
        | otherwise = x:bubbleInsert (y:xs)
bubbleInsert xs = xs

bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort list =
    let t = bubbleInsert list
    in bubbleSort (init t) ++ [last t]
    
-- Zadanie 8
mergeLists l [] = l
mergeLists [] l = l
mergeLists (x:xs) (y:ys)
    | x < y = x:mergeLists xs (y:ys)
    | otherwise = y:mergeLists (x:xs) ys   

-- Zadanie 9
data Tree a = Empty | Node a (Tree a) (Tree a)

preorder :: Tree a -> [a]
preorder Empty = []
preorder (Node a l r) = [a] ++ preorder l ++ preorder r

leftNode :: Tree a -> Tree a
leftNode (Node a l r) = l

rightNode :: Tree a -> Tree a
rightNode (Node a l r) = r

check_if_sub Empty _ = False
check_if_sub tree1 tree2 
   | ((preorder (tree1)) == (preorder (tree2))) = True 
   | otherwise = check_if_sub (leftNode(tree1)) tree2 || check_if_sub (rightNode(tree1)) tree2

-- Zadanie 10
depth :: Tree a -> Int
depth Empty = 0
depth (Node _ l r) = 1 + max (depth l) (depth r)

longest_branch (Node a l r) = depth (Node a l r)

shortest_branch :: Tree a -> Int
shortest_branch Empty = 0
shortest_branch (Node _ l r) = 1 + min (shortest_branch l) (shortest_branch r)

-- Zadanie 11
-- Brakowało "Eq a"
pusta1 :: Eq a => [a] -> Bool
pusta1 x = (x == [])

-- Zadanie 12
naInt :: String -> Int
naInt = foldl (\acc x -> acc * 10 + digitToInt x) 0

-- Zadanie 13
pairs :: Eq a => [a] -> [(a, Integer)]
pairs [] = []
pairs (x:xs) = [(x, foldl1 (+) (map (\x -> 1) (filter (== x) (x:xs))))] ++ (pairs (filter (/= x) xs)) 

-- Zadanie 14
sumPair (x,y) = (abs x + abs y)

insertPair x [] = [x]
insertPair x (y:ys)
       | sumPair x < sumPair y = x:y:ys 
       | otherwise = y:insertPair x ys

sortPairs [x] = [x]
sortPairs (x:xs) = insertPair x (sortPairs xs)

-- Zadanie 15
primes = filterPrime [2..]
    where filterPrime (p:xs) = p : filterPrime [x | x <- xs, x `mod` p /= 0]

-- a)
primesDouble = zip [1..] primes

-- b)
primesLook n = primes !! (n-1)