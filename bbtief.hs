data BB a = L | K a (BB a) (BB a)
tief::b->(a->b->b->b)->BB a->b
tief fL fK L = fL
tief fL fK (K w l r)=fK w (tief fL fK l ) (tief fL fK r)

infixCollect = tief [] (\w l1 l2->l1++[w]++l2)
prefixCollect = tief [] (\w l1 l2->[w]++l1++l2)
postfixCollect = tief [] (\w l1 l2->l1++l2++[w])

anzahlKnoten = tief 0 (\w l1 l2->1+l1+l2)
anzahlBlaetter = tief 1 (\w l1 l2 ->l1+l2)
baumTiefe = tief 0 (\w l1 l2 ->1+ max l1 l2)
istIn x = tief False (\w l1 l2 ->x==w||l1||l2)
