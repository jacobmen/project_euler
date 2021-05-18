import Data.List.Ordered (minus, union, unionAll)

primes = 2 : 3 : minus [5,7..] (unionAll [[p*p, p*p+2*p..] | p <- tail primes])

main = do
    print $ sum $ takeWhile (< 2000000) primes
