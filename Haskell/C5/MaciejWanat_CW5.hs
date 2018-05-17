-- Zadanie 1
import Mojzbior

data Tree a = Empty | Node a (Tree a) (Tree a)

d_a :: Tree Int
d_a = Node 1 (Node 2 (Node 4 Empty Empty) (Node 5 Empty (Node 8 Empty Empty))) (Node 3 (Node 6 Empty (Node 9 Empty Empty)) (Node 7 Empty Empty))

depth :: Tree a -> Int
depth Empty = 0
depth (Node _ l r) = 1 + max (depth l) (depth r)

preorder :: Tree a -> [a]
preorder Empty = []
preorder (Node a l r) = [a] ++ preorder l ++ preorder r

inorder :: Tree a -> [a]
inorder Empty = []
inorder (Node a l r) = inorder l ++ [a] ++ inorder r

postorder :: Tree a -> [a]
postorder Empty = []
postorder (Node a l r) = postorder l ++ postorder r ++ [a]

-- Zadanie 2
is_z2 :: Tree Int -> Bool
is_z2 (Node a l r) = length(filter(\x -> x < a) (inorder l)) == length(inorder l)
                  && length(filter(\x -> x > a) (inorder r)) == length(inorder r)

-- Zadanie 3
longest_branch (Node a l r) = depth (Node a l r)

shortest_branch :: Tree a -> Int
shortest_branch Empty = 0
shortest_branch (Node _ l r) = 1 + min (shortest_branch l) (shortest_branch r)

-- Zadanie 4
class Adres a where
    isValidName :: a -> Bool
    isValidDomain :: a -> Bool

data Email = Email String String
    deriving(Show)

instance Adres Email where
    isValidDomain (Email name domain) = (take 1 domain == "@") 
    isValidName (Email name domain) = (take 1 name /= "@")
    
-- Email dzieli się na nazwę + domenę 
-- - domena musi zaczynać się od @
-- - nazwa nie może zacznynać się od @
-- Funkcja sprawdza czy adres jest poprawny (wg. powyższych kryteriów)
checkIfValid :: Email -> Bool
checkIfValid ad = isValidDomain ad && isValidName ad

-- Zadanie 5

numTimesFound :: Ord a => a -> [a] -> Int
numTimesFound _ [] = 0
numTimesFound x list = length (filter (\y -> y == x) list)

freq l = unique(map (\x -> (x, (numTimesFound x l))) l)