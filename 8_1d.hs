filter':: (a->Bool)->[a]->[a]
filter' f xs = foldr (\x acc-> if f x then x:acc else acc) [] xs
