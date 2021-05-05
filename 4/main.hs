prodList :: Int -> [Int]
prodList n
  | n > 100  = map (* n) [n, n - 1..100] ++ prodList (n - 1)
  | n == 100 = [100 * 100]

palindrome :: String -> Bool
palindrome []     = True
palindrome [x]    = True
palindrome (x:xs) = x == last xs && palindrome (init xs)

main = do
  print $ maximum $ map (read::String->Int) $ filter palindrome $ map show $ prodList 999
