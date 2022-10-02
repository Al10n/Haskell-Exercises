any' :: (a -> Bool) -> [a] -> Bool
any' f []=False
--any' f (x:xs)
--	|f x==True=True
--	|otherwise any' f xs
any' f (x:xs)=f x || any' f xs 

 



