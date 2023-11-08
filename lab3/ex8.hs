doubleElems [] = []
doubleElems (x:xs) = 2 * x : doubleElems xs

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

doubleElems' :: Num a => [a] -> [a]
doubleElems' = map' (\x -> 2 * x)
