import System.Random
import Control.Applicative
import Control.Monad
import Text.Printf

nwd a b
    | b==0 = a
    | otherwise = nwd b (a `mod` b)

nww a b = a*b `div` nwd a b

-- Zadanie 2
z2 = do putStrLn "Podaj dwie liczby: "
        line <- getLine
        line2 <- getLine
        let x = read line
            y = read line2
        putStrLn("Suma: " ++ show (x+y) ++ " \nRoznica: " ++ show(x-y) ++ "\nIloczyn: " ++ show(x*y))

-- Zadanie 3
z3 = do putStrLn "Podaj dwie liczby: "
        line <- getLine
        line2 <- getLine
        let x = read line
            y = read line2
        putStrLn("NWD: " ++ show (nwd x y) ++ " \nNWW: " ++ show(nww x y))

-- Zadanie 4
z4 = do putStrLn "Podaj imie i nazwisko: "
        name <- getLine
        surname <- getLine
        putStrLn("Witaj, " ++ [head surname] ++ [head name])


-- Zadanie 5
z5 :: IO ()
z5 = do
        answer <- randomRIO (0, 99)
        putStrLn "Wylosowałem liczbę z zakresu 0-99."
        playGame answer 0

playGame :: Int -> Int -> IO ()
playGame answer curGuesses = do
        if (curGuesses < 10) then do
            putStrLn "Jak myślisz, jaka to liczba?"
            putStr   ">"
            guess <- getGuessFromUser
            when (guess /= answer) $ do
                giveHints answer guess
                playGame answer (curGuesses + 1)
            when (guess == answer) $ do
                putStrLn "Zgadłeś!"
                printf   "Ilość strzałów: %d\n" (curGuesses + 1)
        else do
            putStrLn("\nNie zgadłeś :( Liczba o której myślałem to " ++ show(answer))
 
giveHints :: Int -> Int -> IO ()
giveHints answer guess 
    | answer > guess = putStrLn "Więcej!"
    | otherwise      = putStrLn "Mniej!"

getGuessFromUser :: IO Int
getGuessFromUser = do
    read <$> getLine