data ML a = E | L a (ML a) deriving Show

aList = L 1 2restList
2restList = L 2 3restList
3restList = L 3 4restList
4restList = L 4 E

aList'= L 1(L 2(L 3 (L 4 E)))

myHead:: ML a->a
myHead E= error "empety list"
myHead L (head _)= head

myTail:: (ML a)=>a->a
myTail E=error "empety list"
myTail L(_ tailofList)=tailofList

myAdd::(Num a)=>ML a->ML a->ML a
myAdd E _=E
myAdd _ E=E
myAdd L (x xs) L (y ys) =L (x+y) (myAdd xs ys)

myAppend::ML a->ML a->ML a
myAppend E _ = _
myAppend _ E = _
myAppend L (x xs) L (y ys)= L x (myAppend L xs (L y ys))

toString::Show a=> ML a -> String
toString E = ""
toString (L val E)=show(val)
toString (L val rest)= show(val) ++ ", " ++ (toString rest) 

