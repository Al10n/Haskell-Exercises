data ComplexNumber = C (Double, Double)
instance Monoid ComplexNumber where
  mempty= C (0, 0)

  mappend (C (r1, i1)) (C (r2, i2))= C (r1+r2, i1+i2)

instance Semigroup ComplexNumber where
  (<>)=mappend

instance Show ComplexNumber where
  show (C (r, i)) = show r ++ (if i >= 0 then "+" else  "-") ++ show (abs i)++"i"
