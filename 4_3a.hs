length' []=0
length' (x:xs)= 1+length' xs


length'' xs = lHelp'' xs 0
lHelp'' [] n=n
lHelp'' (_:xs) n = lHelp'' xs (n+1)  
