takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' f []=[]
takeWhile' f xs= foldr (\x acc->)
