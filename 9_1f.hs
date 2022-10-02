  import Data.List (delete)

  data BB a = L | K a (BB a) (BB a) deriving Show

  instance (Ord a, Eq a)=>Eq (BB a) where
    (==)=


  treeToList::BB a->[a]
  treeToList L = []
  treeToList (K w l r) = [w]++treeToList l++treeToList r

  sindGleich::(BB a)->(BB a)->Bool
  sindGleich [] []  = True
  sindGleich [] xs  = False
  sindGleich (x:xs) ys= (x`elem` ys) && sindGleich xs delete x ys
