contains':: a->[a]->Bool

contains' elem [] = False
contains' elem (x:xs)  = (x==elem) || contains' elem xs

contains''::a->[a]->Bool
contains'' elem []  = False
contains'' elem (x:xs)  
	|elem==x= True
	|otherwise=contains'' elem xs 
