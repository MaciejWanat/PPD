-- Zadanie 2.
--2a
f :: Integer -> Integer
f x 
   | x > 2 = x*x
   | x > 0 && x <= 2 = x-1
   | x <= 0 = abs(x)

--2b
nwd a b
    | b==0 = a
    | otherwise = nwd b (a `mod` b)

--2c
nww a b = a*b `div` nwd a b

--2d
trojkat a b c
    | a + b > c && a + c > b && b + c > a = True
    | otherwise = False

--2e
vStozek r h = 1/3 * pi * r * r * h

--2f
lStozek r h = sqrt(h*h + r*r)

--2g
pow_rek a 0 = 1
pow_rek a n = a * pow_rek a (n-1)

--2h
pow_ak a n = pow_akPOM a n 1
pow_akPOM a n x = if n == 0 then x
    else pow_akPOM a (n-1) (x*a)

--2i
fib:: Integer -> Integer
fib n = if n == 0 then 1
   else if n == 1 then 1
       else fib(n-1) + fib(n-2)

check_fib_10:: Integer -> Bool
check_fib_10 f = f == fib 10

--2j
fib_ak n = fibPOM n 1 1
fibPOM n f1 f2 = if n==1 then f1
   else fibPOM (n-1)(f1+f2) f1

check_fib a
  | a < 5  = False
  | a > 100 = False
  | a `elem` [fib_ak x  | x <- [1..100]] = True
  | otherwise = False