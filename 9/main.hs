tup = head [(a, b, 1000 - a - b) | a <- [1..1000], b <- [1..1000], -2 * a * b + 2000 * a + 2000 * b - (1000^2) == 0]

main = do
    print $ a * b * c
    where
        (a, b, c) = tup
