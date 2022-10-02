data Retrievalbe a = NotAvailable | Present a deriving Show
instance Functor Retrievalbe where
  fmap f NotAvailable = NotAvailable
  fmap f (Present x) = Present (f x)

instance Applicative Retrievalbe where
  pure x = Present x
  NotAvailable <*> _ = NotAvailable
  _ <*> NotAvailable = NotAvailable
  Present f <*> Present x = Present (f x)

instance Monad Retrievalbe where
  NotAvailable >>= _ = NotAvailable
  _ >>= NotAvailable = NotAvailable
  Present x >>= f    = Present f x
  
