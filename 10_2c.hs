  instance Semigroup Integer where
    (<>)=op
  instance Monoid Integer where
    mempty=0
    mappend = op

  op :: Integer -> Integer-> Integer
  op 0 0 = 0
  op 1 0 = 1
  op 0 1 = 1
  op 1 1 = 0
