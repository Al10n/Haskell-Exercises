unzipWith :: (t -> (a, b)) -> [t] -> ([a], [b])
unzipWith f list= unzip' f list ([],[])
	where unzip' f [] acc
			=acc
	      unzip' f (x:xs) (first, second)
		=unzip' f xs (first++[fst (f x)], second++[snd (f x)])