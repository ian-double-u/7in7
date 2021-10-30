data Suit = Spades | Hearts | Clubs | Diamonds deriving (Show)
data Rank = Ten | Jack | Queen | King | Ace deriving (Show)
type Card = (Rank, Suit)
type Hand = [Card]

value :: Rank -> Integer
value Ten = 10
value Jack = 11
value Queen = 12
value King = 13
value Ace = 25

cardValue :: Card -> Integer
cardValue (rank, suit) = value rank

-- my own addition
handValue :: [Card] -> Integer
handValue h = foldl (+) 0 [cardValue c | c <- h]