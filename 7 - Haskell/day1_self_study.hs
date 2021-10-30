-- my method (list-comprehension)
allEven :: [Integer] -> [Integer]
allEven [] = []
allEven x = [y | y <- x, mod y 2 == 0]

-- Tate's method
-- allEven :: [Integer] -> [Integer]
-- allEven [] = []
-- allEven (h:t) = if even h then h:allEven t else allEven t

-- my method (filter)
allEven2 :: [Integer] -> [Integer]
allEven2 x = filter even x -- don't need x = [] case

-- reverse "abc"
-- reverse [3,2,1]

-- colors = ["black", "white", "blue", "yellow", "red"]
color_pairs :: [[Char]] -> [([Char],[Char])]
color_pairs colors = [(x,y) | x <- colors, y <- colors, x /= y, x < y]

timesTable = [(x,y,x*y) | x <- [1..12], y <- [1..12]]