not' :: Bool -> Bool
not' b = case b of
      True -> False
      False -> True

absInt n = 
  case (n >= 0) of
    True -> n
    _ -> -n

and' :: (Bool, Bool) -> Bool
and' (x, y) = case (x, y) of
          (True, True) -> True
          _ -> False

nand' :: (Bool, Bool) -> Bool
nand' (x, y) = case (x, y) of
      (True, True) -> False
      _ -> True
