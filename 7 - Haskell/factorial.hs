-- factorial :: Integer -> Integer
-- factorial 0 = 1
-- factorial x = x * factorial (x - 1)

factorial :: Integer -> Integer
factorial x
    | x > 1 = x * factorial (x - 1)
    | otherwise = 1