isqrt :: (Integral a) => a -> Float
isqrt n = sqrt $ fromIntegral n

primeFactors' :: (Integral a) => a -> a -> [a]
primeFactors' n divisor
    | even n                     = 2 : primeFactors' (n `div` 2) divisor
    | divisor <= floor (isqrt n) = if n `rem` divisor == 0
                                     then divisor : primeFactors' (n `div` divisor) divisor
                                   else primeFactors' n (divisor + 2)
    | n > 2                      = [n]
    | otherwise                  = []

primeFactors :: (Integral a) => a -> [a]
primeFactors n = primeFactors' n 3

main = do
    print $ last $ primeFactors 600851475143
