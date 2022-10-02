data Suit= Club|Heart|Spade|Diamond
	deriving (Show, Enum, Eq)
data Value= Ace|Two|Three|Four|Five|Six|Seven|Eight|Nine|Ten|Prince|Queen|King
	deriving (Show, Enum, Eq, Ord)
data Card= Card Suit Value
	deriving (Show)

instance Eq Card where
	(Card s1 v1)==(Card s2 v2)= Eq = compare card1 card2
instance Ord Card where
	compare (Card Heart v1) (Card Heart v2) = compare v1 v2
	compare (Card Heart _) (Card _ _) = GT
	compare (Card _ _) (Card Heart _) = LT
	compare (Card _ v1) (Card _ v2) = LT
	 