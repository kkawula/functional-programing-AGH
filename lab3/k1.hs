import Data.Char

fun :: String -> Int
fun = sum.
      map ((^2) . length).
      filter (all isUpper).
      filter ((=='K').head).
      words

vvv :: String -> Int
vvv = length .
      filter ((>2) . length) .
      map (filter (`elem` vowels)) .
      words
   where vowels = "aeylou"
