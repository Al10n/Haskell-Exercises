--bbinfix.hs
data BB a = L| K a (BB a) (BB a)
infixCollect:: BB a -> [a]
infixCollect L = []
infixCollect (K w l r) = infixCollect l ++ [w]++infixCollect r      

sb4 = K "$" (K "+" L (K "1" L L)) (K "mod" (K "10" L L) (K "3" L L))
