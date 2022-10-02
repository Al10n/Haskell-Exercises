data List a = Cons a (List a)| Nil

instance Functor List a where
  fmap f Nil = Nil
  fmap f (Cons x xs) = Cons (f x) (fmap f xs)

scale :: (Functor f, Num b) => b -> f b -> f b
scale factor xs = fmap (factor *) xs


instance Applicative List where
  pure x = (Cons x (pure x))
  Nil <*> _ = Nil
  _ <*> Nil = Nil
  (Cons f fs) <*> (Cons x xs) = Cons (f x) (fs <*> xs)

lzipWith f xs ys = fmap f <*> xs <*>ys
