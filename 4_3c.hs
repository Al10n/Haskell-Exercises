reverse' []=[]
reverse' (x:xs)=reverse' xs ++ [x]



reverse''::[a]->[a]
reverse'' xs =_r xs [] 
_r [] acc = acc
_r (x:xs) acc= _r xs (x:acc) 
