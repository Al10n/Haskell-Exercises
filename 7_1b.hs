data Suit= Club|Heart|Spade|Diamond
	deriving (Show, Enum, Eq)
data Value= Ace|Two|Three|Four|Five|Six|Seven|Eight|Nine|Ten|Prince|Queen|King
	deriving (Show, Enum, Eq, Ord)
data Card= Card Suit Value
	deriving (Show, Eq)