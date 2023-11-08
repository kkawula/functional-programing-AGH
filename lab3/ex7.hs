onlyEven [] = []
onlyEven (x:xs)
  | x `mod` 2 == 0 = x : onlyEven xs
  | otherwise      = onlyEven xs


filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' predicate (x:xs)
    | predicate x = x : filter' predicate xs
    | otherwise = filter' predicate xs

onlyEven' :: Integral a => [a] -> [a]
onlyEven' = filter' (\x -> x `mod` 2 == 0)

