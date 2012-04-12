-- file: ch03/MySecond.hs
mySecond :: [a] -> a
mySecond xs = if null (tail xs)
              then error "list too short"
              else head (tail xs)

safeSecond :: [a] -> Maybe a
safeSecond [] = Nothing
safeSecond xs = if null (tail xs)
                then Nothing
                else Just (head (tail xs))

tidySecond :: [a] -> Maybe a
tidySecond (_:x:_) = Just x
tidySecond _       = Nothing

nTh :: Int -> Maybe [a] -> Maybe a
nTh 1 (Just (x:_))    = Just x
nTh n (Just [])       = Nothing
nTh n (Just (_:xs))   = nTh (n-1) (Just xs)
-- specialized versions
first   x   = nTh 1 x
second  x   = nTh 2 x
third   x   = nTh 3 x
fourth  x   = nTh 4 x
-- etc...