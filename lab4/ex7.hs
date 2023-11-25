module Stack (Stack(MkStack), push, pop, top, empty, isEmpty) where
push :: a -> Stack a -> Stack a
pop :: Stack a -> (a, Stack a)
top :: Stack a -> a
empty :: Stack a
isEmpty :: Stack a -> Bool

newtype Stack a = MkStack [a] deriving Show

empty = MkStack []
isEmpty (MkStack s) = null s
push x (MkStack s) = MkStack (x:s)  
pop (MkStack (s:ss)) = (s, MkStack ss)
top (MkStack (s:ss)) = s
