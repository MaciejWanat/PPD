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