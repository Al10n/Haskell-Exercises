data RGB = RGB (Integer, Integer, Integer) deriving show

instance Semigroup RGB where
  (RGB (r1,g1,b1)) <>(RGB (r2,g2,b2)) = RGB (min (r1+r2) 255, min (g1+g2) 255,min (b1+b2) 255 )

instance Monoid RGB where
  mempty = RGB (0,0,0)
  mappend = (<>)
