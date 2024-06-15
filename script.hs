second1 :: [a] -> a
second2 :: [a] -> a
second3 :: [a] -> a
sumsqr  :: Int -> Int

second1  a = (head(tail a ))
second2  a = a !! 1
second3  (_:xs) | null xs = error "No second element detected. A set with cardinality 2 expected"
                | otherwise = head xs   

-- second3  (_:xs) =  (head xs) -- Technically pattern matching since it derives output from input but ill include equation guarded version since im not sure what you want specifically lol
           
-- XOR gate only 1 true value, not both folse and not both true

xor1 :: Bool -> Bool -> Bool
xor2 :: Bool -> Bool -> Bool
xor3 :: Bool -> Bool -> Bool
                                                 
xor1 True False = True
xor1 True True = False
xor1 False False = False
xor1 False True = True

xor2 a b = if a then -- It needs fixing
           if b then False else True
           else b

--xor2 a b = if a /= b then True else False 

xor3 a b = a /= b

--squares n = [x*x | x <- [1 .. n]]
--sumsqr n =  sum (squares n)

sumsqr n = sum [x^2 | x <- [1..n]] 

 
grid :: Int -> [(Int,Int)]

grid n  = [(a,b) | a <- [1..n], b <- [1..n], a/=b ]


euclid :: Int -> Int -> Int
euclid x y | x == y = x
           | x < y = euclid x(y - x )
           | otherwise = euclid (x-y) y

fastrev :: [a] -> [a]
fastrev xs = rev xs []


rev :: [a] -> [a] -> [a]
rev [] ys = ys
rev (x:xs) ys = rev xs (x:ys)  


-- Just testing stuff IGNORE 

fact 0 = 1
fact n = n * fact (n-1)

lam = \x -> x + 1 -- adds 1 to x

myrev s = foldl (\xs x -> x:xs) [] s

-- ##########################
