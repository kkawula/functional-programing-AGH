data BinIntTree = EmptyIntBT |
                    IntNodeBT Int BinIntTree BinIntTree


sumBinIntTree :: BinIntTree -> Int
sumBinIntTree EmptyIntBT = 0
sumBinIntTree (IntNodeBT n lt rt )= n + sumBinIntTree lt + sumBinIntTree rt

treeExample :: BinIntTree
treeExample = IntNodeBT 1 (IntNodeBT 2 EmptyIntBT EmptyIntBT) (IntNodeBT 3 EmptyIntBT EmptyIntBT)

result :: Int
result = sumBinIntTree treeExample

data Expr a = Lit a |
              Add (Expr a) (Expr a)

eval :: Num a => Expr a -> a
eval (Lit n) = n
eval (Add e1 e2) = eval e1 + eval e2

show' :: Show a => Expr a -> String
show' (Lit n) = show n 
show' (Add e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"


data BinTree a = EmptyBT | NodeBT a (BinTree a) (BinTree a)

depthOfBT :: BinTree a -> Int
depthOfBT EmptyBT = 0
depthOfBT (NodeBT _ left right) = 1 + max (depthOfBT left) (depthOfBT right)

flattenBT :: BinTree a -> [a]
flattenBT EmptyBT = []
flattenBT (NodeBT val left right) = flattenBT left ++ [val] ++ flattenBT right

mapBT :: (a -> b) -> BinTree a -> BinTree b
mapBT _ EmptyBT = EmptyBT
mapBT f (NodeBT val left right) = NodeBT (f val) (mapBT f left) (mapBT f right)

insertBT :: Ord a => a -> BinTree a -> BinTree a
insertBT x EmptyBT = NodeBT x EmptyBT EmptyBT
insertBT x (NodeBT val left right)
    | x == val = NodeBT val left right
    | x < val  = NodeBT val (insertBT x left) right
    | x > val  = NodeBT val left (insertBT x right)


originalTree :: BinTree Int
originalTree = NodeBT 1 (NodeBT 2 EmptyBT EmptyBT) (NodeBT 3 EmptyBT EmptyBT)

mappedTree :: BinTree String
mappedTree = mapBT (\x -> show x) originalTree

emptyTree :: BinTree Int
emptyTree = EmptyBT

insertedTree :: BinTree Int
insertedTree = insertBT 5 (insertBT 3 (insertBT 7 emptyTree))

