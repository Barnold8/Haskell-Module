-- 1.

e1 :: [Bool]
e1 = [True,False,True]

e2 :: [[Int]]
e2 = [[1,2],[3,4]]

e3 :: (Char,Bool)
e3 = ('c',True)

e4 :: [(String,Int)]
e4 = [("Hello",24)]

e5 :: Int -> Int
e5 n = n*2 

e6 :: Int -> Int -> Int
e6 x y = x + y

e7 :: (Int,Char) -> (Char,Int)
e7 (x,y) =  (y,x)

e8 :: Int -> (Int,Int)
e8 x = (x,x)

--2

copy :: x -> x
copy x = x

one :: x -> [x]
one x = [x]

first :: (x,y) -> x
first (x,y) = x

second :: x -> x -> x
second x y = y

mult :: Num a => a-> (a->a)
mult m n = m*n

