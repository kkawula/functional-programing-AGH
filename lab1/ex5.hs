import Data.Char
sgn :: Int -> Int
sgn n = if n < 0
        then -1
        else if n == 0
          then 0
          else 1

absInt :: Int -> Int
absInt n = if n < 0
           then -n
           else n

min2Int :: (Int, Int) -> Int
min2Int(a, b) = if a <= b
                  then a
                else b
toUpper1 :: Char -> Char
toUpper1 c
  | isLower c = toEnum(fromEnum c - fromEnum 'a' + fromEnum 'A')
  | otherwise = c 

toLower1 :: Char -> Char
toLower1 c
  | isUpper c = toEnum(fromEnum c - fromEnum 'A' + fromEnum 'a')
  | otherwise = c

isDigit1 :: Char -> Bool
isDigit1 c  = c >= '0' && c <= '9'

charToNum :: Char -> Int
charToNum c
  | c >= '0' && c <= '9' = fromEnum c - fromEnum '0'
  | otherwise = error "Nie jest to cyfra"
