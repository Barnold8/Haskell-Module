import Data.Char

chew :: String -> String
chew str = takeWhile(== head str) str

nibble :: String -> String
nibble str = take 9 (chew str)

runs :: String -> [String]
runs str    | length str <= 0 = []
            | otherwise = (take (length(nibble str))str) : runs (drop (length(nibble str))str)

f :: String -> (Char,Int)
f str = (head str,length str) -- Possible use of a lambda in place of f for encode

encode :: String -> [(Char,Int)]
encode [] = []          
encode str = map f (runs str)

flatten :: [(Char,Int)] -> String
flatten [] = ""                 -- For the event of the last recursion stack frame (i.e its found an empty string and stops recursing)    
flatten (x:xs) = [fst x] ++ show(snd(x)) ++ flatten xs

compress :: String -> String
compress str = flatten (encode str)

decode :: [(Char,Int)] -> String
decode [] = ""                  -- For the event of the last recursion stack frame (i.e its found an empty string and stops recursing)  
decode (x:xs) = replicate (snd x) (fst x) ++ decode xs

expand :: String -> [(Char,Int)]
expand "" = []
expand (x:y:zs) = [(x,digitToInt y)] ++ expand zs

decompress :: String -> String
decompress "" = ""
decompress (x:y:zs) = replicate (digitToInt y) x ++ decompress zs






-- flatten arr = [fst (arr !! 0)] : [(["1".."9"] !! (snd ((arr !! 0)-1)))]
-- flatten arr = [fst (arr !! 0)] : [("123456789" !! (snd ((arr !! 0)-1)))]


-- Lambda tests

invalid_chew :: Char -> String -> String -- I named it that because it doesnt follow the String -> String needed
invalid_chew = \x str -> takeWhile (== x) str

--p = \x y -> x + y == 1

--f n = [(x, y) | x <- [0..n], y <- [0..n], p x y ]

-- Lambda tests 
