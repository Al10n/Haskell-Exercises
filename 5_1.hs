sieve::[Integer]->[Integer]
sieve []=[]
sieve (x:xs)
	|x<2=sieve xs
	|otherwise=x: sieve [y|y<-xs,(y`mod`x)>0]
