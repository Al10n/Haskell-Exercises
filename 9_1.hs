data BB a = L | K a (BB a) (BB a) deriving Show
--[5,7,12,3,1,9]
--let a = K 5 (K 3 (K 1 L L) L) (K 9 (K 7 L L) (K 12 L L))
tief:: b->(a->b->b->b)->BB a-> b
tief fL fK L=fL
tief fL fK (K w l r)=fK w (tief fL fK l) (tief fL fK l)



maxVal::Ord a=>BB a->a
maxVal (K w L L)=w
maxVal (K w L r)= max w (maxVal r)
maxVal (K w l L)= max w (maxVal l)
maxVal (K w l r)= max w (max (maxVal l) (maxVal r))

minVal::Ord a=>BB a->a
minVal (K w L L)=w
minVal (K w L r)= min w (minVal r)
minVal (K w l L)= min w (minVal l)
minVal (K w l r)= min w (min (minVal l) (minVal r))

isBinarySearchTree::Ord a=>BB a->Bool
isBinarySearchTree L = True
isBinarySearchTree (K _ L L) = True
isBinarySearchTree (K w L r)=  isBinarySearchTree r && w > (maxVal r)
isBinarySearchTree (K w l L)=  isBinarySearchTree l && w < (minVal l)
isBinarySearchTree (K w l r)=  isBinarySearchTree r && isBinarySearchTree l&&(w >maxVal r)&&(w<minVal l)


depth :: (Num a, Ord a) => BB t -> a
depth = tief 1 (\w l1 l2->1 + max l1 l2)


insert :: Ord a => a -> BB a -> BB a
insert e L = (K e L L)
insert e (K w l r)
        |e>w = (K w l (insert e r))
        |otherwise =  (K w (insert e l) r)

buildTree :: Ord a => [a] -> BB a
buildTree list = buildTree' list L
 where buildTree' [] tree=[]
      buildTree' (x:xs) tree = buildTree' xs (insert x tree)

--buildTree' list  = foldr (\x acc-> insert x acc) L list
