module Main where

deleteBy' :: (a -> a -> Bool) -> a -> [a] -> [a]
deleteBy' _ _ [] = []
deleteBy' f n (x:xs)
   | f n x = xs
   | otherwise = x : deleteBy' f n xs

main :: IO()
main = print $ deleteBy' (>) 8 [8,7,9,4,5,6,3,1,2]
