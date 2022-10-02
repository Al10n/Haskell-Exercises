data Triple a= Triple a a a

instance (Show a)=>Show (Triple a) where
  show (Triple x y z) = "(" ++ show x ++", "++ show y++", "++show z ++")"

tfst (Triple x y z)=x
tscd (Triple x y z)=y
ttrd (Triple _ _ z)=z

tripleFromList :: [a] -> Triple a
tripleFromList (x:y:z:_) = Triple x y z
tripleToList :: Triple a -> [a]
tripleToList (Triple x y z) = [x]++[y]++[z]

x (Triple a b c) (Triple d e f) = Triple (b*f-c*e) (c*d-a*f) (a*e-b*d)

instance Functor Triple where
 fmap f (Triple x y z) = Triple (f x) (f y) (f z)


scaMult :: Num a => a -> Triple a -> Triple a
scaMult x triple = fmap (x*) triple

instance Applicative Triple where
  pure x=Triple x x x
  (Triple f g h)<*>(Triple x y z)=Triple (f x) (f y) (f z)

tripleAdd :: Num a => Triple a -> Triple a -> Triple a
tripleAdd t1 t2 = fmap (+) t1 <*> t2

tripleSub :: Num a => Triple a -> Triple a -> Triple a
tripleSub t1 t2 = fmap (-) t1 <*> t2

o :: Num a => Triple a -> Triple a -> a
o t1 t2 = sum (tripleToList(fmap (*) t1 <*> t2))

tlength (Triple x y z) = sqrt(x^2+y^2+z^2)  
