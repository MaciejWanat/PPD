powAcc x n = powAccHelp x n 1
powAccHelp x n s
      | n == 0 = s
      | otherwise = powAccHelp x (n-1) (s*x)

fibAcc n = fibAccHelp n 1 1
fibAccHelp 1 _ _ = 1
fibAccHelp 0 _ _ = 0
fibAccHelp n w1 w2
      | n == 2 = w1
      | otherwise = fibAccHelp (n-1) (w1+w2) w1  

-- and an again and again
nty 0 = 0
nty 1 = 5
nty n = (nty (n-1)) + (2*nty (n-2))

-- acc
ntyAcc n = ntyPom (n-1) 5 0
ntyPom n x y
        | n == 0 = 0
        | n == 1 = x
        | otherwise = ntyPom (n-1) (x+2*y) x      

firstNSec :: [x] -> [x]
firstNSec (x:xs) = head(xs):x:tail(xs)

firstNLast (x:xs) = last(xs):init(xs) ++ [x]
 
secNAlmostLast (x:xs) = x:last(init(xs)):tail(init(init(xs))) ++ [head(xs)] ++ [last(xs)]

--howMany xs a = foldr (+) map (x -> 1) filter (== a) xs

uniq [] = []
uniq (x:xs) = x:uniq(filter (/= x) xs)

isEven [] [] = True
isEven [] l = False
isEven l [] = False
isEven (x:xs) (y:ys)
        | x == y = isEven xs ys
        | otherwise = False

insert x [] = x
insert x (y:ys)
        | x < y = x:y:ys
        | otherwise y: insert(x ys)