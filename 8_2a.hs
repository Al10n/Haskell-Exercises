instance Monoid Ordering where
  mempty=EQ
  mappend _ EQ=EQ
  mappend EQ _ = EQ
  mappend LW _ = LW
  mappend GT _ = GT


revCompare :: String -> String -> Ordering
revCompare [] [] = EQ
revCompare [] (_:_) = LT
revCompare (_:_) [] = GT
revCompare (x:xs) (y:ys) = (flip compare x y) `mappend` (revCompare xs ys)
