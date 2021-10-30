-- use Main.gcd in repl
gcd :: Integer -> Integer -> Integer
gcd 0 y = abs (y)
gcd x 0 = abs (x)
gcd x y = maximum [d | d <- [1..(min x y)], mod x d == 0, mod y d == 0]

-- factorial from day 1
factorial :: Integer -> Integer
factorial x
    | x > 1 = x * factorial (x - 1)
    | otherwise = 1

-- Wilson's Theorem for primality test (very inefficient, but my first time implementing)
prime :: Integer -> Bool
prime p = (mod ((factorial (p-1)) + 1) p) == 0

-- returns primes greater than or equal to input
primes :: Integer -> [Integer]
primes x
    | x < 2 = []
    | otherwise = [p | p <- [x..], prime p]