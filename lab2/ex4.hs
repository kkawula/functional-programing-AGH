import Data.Char

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

capitalize :: [Char] -> [Char]
capitalize [] = []
capitalize (x:xs) = toUpper x : xs

countRightTriangles :: Int
countRightTriangles =
  sum [1 | a <- [1..100], b <- [a..100], c <- [b..100], a^2 + b^2 == c^2]

isPrime :: Integral t => t -> Bool
isPrime n
  | n <= 1 = False
  | n == 2 = True
  | n `mod` 2 == 0 = False
  | otherwise = all (\i -> n `mod` i /= 0) [3,5..isqrt n]
  where isqrt = floor . sqrt . fromIntegral
