main = do
    print $ sum [1..100] ^ 2 - foldl1 (\x y -> x + y^2) [1..100]
