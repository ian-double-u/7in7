-- personal tangent
listConcat :: [[Char]] -> [Char]
listConcat z = foldl (\x y -> x ++ y) "" z

-- *Main> listConcat ["Hi ", "my name is ", "BoB"]
-- "Hi my name is BoB"