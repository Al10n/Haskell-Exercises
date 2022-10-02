main::IO()
main=do
	putStrLn "Wort in hochdeutsche Form:"
	deutsch<-getLine
	putStrLn "Wort in bairische Form: "
	bairisch<-getLine

	if null deutsch||null bairisch
	then return ()
	else do
		putStrLn (deutsch++"heisst im bairischen "++bairisch)
		main
