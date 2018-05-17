-- Zadanie 1.
data Moto = Skoda | Opel | Ford | Tata | Jaguar
   deriving (Show)

type Kraj = [Char]

-- a)
kraj_marka:: Kraj -> Moto
kraj_marka x
   | x == "UK" = Jaguar
   | x == "Niemcy" = Opel
   | x == "US" = Ford
   | x == "Chiny" = Tata
   | x == "Czechy" = Skoda

-- b)
moto_avgSpeed:: Moto -> Int
moto_avgSpeed d = case d of 
   Skoda -> 50
   Opel -> 60
   Ford -> 70
   Tata -> 40
   Jaguar -> 65

-- Zadanie 2.
data Tree a = Empty | Node a (Tree a) (Tree a)

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

-- a)
d_a :: Tree Int
d_a = Node 1 (Node 2 (Node 4 Empty Empty) (Node 5 Empty (Node 8 Empty Empty))) (Node 3 (Node 6 Empty (Node 9 Empty Empty)) (Node 7 Empty Empty))

-- b)
d_b :: Tree Char
d_b = Node 'a' (Node 'b' Empty (Node 'd' (Node 'f' Empty Empty) Empty)) (Node 'c' (Node 'e' Empty (Node 'g' Empty Empty)) Empty)

-- Zadanie 3.

tree_member_pre tree el = el `elem` (preorder tree)
tree_member_in tree el = el `elem` (inorder tree)
tree_member_post tree el = el `elem` (postorder tree)

-- Zadanie 4.
-- Podrzewo i inne drzewo typu int (do testów)
-- sub d_a
sd_a :: Tree Int
sd_a = Node 2 (Node 4 Empty Empty) (Node 5 Empty (Node 8 Empty Empty))
-- non sub d_a
nsd_a :: Tree Int
nsd_a = Node 3 (Node 6 Empty Empty) (Node 2 Empty (Node 5 Empty Empty))

leftNode :: Tree a -> Tree a
leftNode (Node a l r) = l

rightNode :: Tree a -> Tree a
rightNode (Node a l r) = r

check_if_sub Empty _ = False
check_if_sub tree1 tree2 
   | ((preorder (tree1)) == (preorder (tree2))) = True 
   | otherwise = check_if_sub (leftNode(tree1)) tree2 || check_if_sub (rightNode(tree1)) tree2

-- Zadanie 5.
bFS :: Tree a -> [a]
bFS tree = tbf [tree]
    where
        tbf [] = []
        tbf xs = map nodeValue xs ++ tbf (concat (map leftAndRightNodes xs))

        nodeValue (Node a _ _) = a

        leftAndRightNodes (Node _ Empty Empty) = []
        leftAndRightNodes (Node _ Empty b)     = [b]
        leftAndRightNodes (Node _ a Empty)     = [a]
        leftAndRightNodes (Node _ a b)         = [a,b]