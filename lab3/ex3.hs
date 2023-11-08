sqr x = x^2

funcFactory n = case n of
  1 -> id
  2 -> sqr
  3 -> (^3)
  4 -> \x -> x^4
  5 -> intFunc
  _ -> const n
  where 
    intFunc x = x^5

maclaurin :: Int -> Double -> Double
maclaurin n x 
    | n >= 0 =
      let factorial k = product [1..k]
      in (x^n) / fromIntegral (factorial n) + maclaurin (n-1) x
    | otherwise = 0
