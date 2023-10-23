myFun x = 2 * x

add2T :: Num a => (a, a) -> a
add2T (x, y) = x + y

add2C :: Num a => a -> a -> a
add2C x y = x + y

add3T :: Num a => (a, a, a) -> a
add3T (a, b, c) = a + b + c

add3C :: Num a => a -> a -> a -> a
add3C a b c  = a + b + c

curry3 :: ((a, b, c) -> d) -> a -> b -> c -> d
curry3 f a b c = f (a, b, c)

_ToPower5 :: Num a => a -> a
_ToPower5 a = (^ 5) a

subtrNFrom5 :: Num a => a -> a
subtrNFrom5 a = 5 - a

subtr5From_ :: Num a => a -> a
subtr5From_ a = a - 5

flip2 :: (a -> b -> c) -> (b -> a -> c)
flip f x y = f y x 
